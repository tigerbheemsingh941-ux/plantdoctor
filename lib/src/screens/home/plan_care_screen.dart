import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

import 'plant_detail_screen.dart';
import '../../data/plant_data.dart';
import 'package:provider/provider.dart';

import '../../providers/user_plant_provider.dart';
import '../../services/recent_search_service.dart';

class PlanCareScreen extends StatefulWidget {
  const PlanCareScreen({super.key});

  @override
  State<PlanCareScreen> createState() => _PlanCareScreenState();
}

class _PlanCareScreenState extends State<PlanCareScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final RecentSearchService _recentSearchService = RecentSearchService();
  List<String> _recentSearches = [];

  // Lazy loading state
  static const int _itemsPerPage = 5;
  int _displayedItemCount = _itemsPerPage;
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    // Load plants from provider
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<UserPlantProvider>(context, listen: false).loadPlants();
    });
    _loadRecentSearches();
    _searchController.addListener(_onSearchChanged);
    _scrollController.addListener(_onScroll);
  }

  Future<void> _loadRecentSearches() async {
    final searches = await _recentSearchService.getRecentSearches();
    setState(() {
      _recentSearches = searches;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    // Reset pagination when search changes
    setState(() {
      _displayedItemCount = _itemsPerPage;
    });
  }

  void _onScroll() {
    if (_isLoadingMore) return;

    // Check if user has scrolled near the bottom (80% of the way)
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      _loadMoreItems();
    }
  }

  void _loadMoreItems() {
    setState(() {
      _isLoadingMore = true;
    });

    // Simulate a small delay for smoother UX
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        setState(() {
          _displayedItemCount += _itemsPerPage;
          _isLoadingMore = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Access UserPlantProvider
    final userPlantProvider = Provider.of<UserPlantProvider>(context);
    final userPlants = userPlantProvider.userPlants;

    // Combine user plants and demo plants
    final allPlants = [...userPlants, ...demoPlants];

    // Filter logic
    final query = _searchController.text.toLowerCase();
    final List<Map<String, dynamic>> filteredPlants;

    if (query.isEmpty) {
      filteredPlants = [];
    } else {
      filteredPlants = allPlants.where((plant) {
        final name = plant['name'].toString().toLowerCase();
        final scientific = plant['scientific'].toString().toLowerCase();
        return name.contains(query) || scientific.contains(query);
      }).toList();
    }

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Plan Care"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search for a plant...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Theme.of(context).cardColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
              ),
            ),
          ),

          // Plant List (Grid)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: filteredPlants.isEmpty && _searchController.text.isEmpty
                  ? LayoutBuilder(
                      builder: (context, constraints) {
                        return SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: constraints.maxHeight,
                            ),
                            child: Column(
                              mainAxisAlignment: _recentSearches.isEmpty
                                  ? MainAxisAlignment.center
                                  : MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (_recentSearches.isNotEmpty) ...[
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Recent Searches",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(
                                            context,
                                          ).textTheme.bodyLarge?.color,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () async {
                                          await _recentSearchService
                                              .clearRecentSearches();
                                          _loadRecentSearches();
                                        },
                                        child: const Text(
                                          "Clear History",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Wrap(
                                    spacing: 8.0,
                                    runSpacing: 4.0,
                                    children: _recentSearches.map((search) {
                                      return ActionChip(
                                        label: Text(search),
                                        avatar: const Icon(
                                          Icons.history,
                                          size: 16,
                                        ),
                                        onPressed: () {
                                          try {
                                            final plant = allPlants.firstWhere(
                                              (p) => p['name'] == search,
                                            );
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    PlantDetailScreen(
                                                      plant: plant,
                                                    ),
                                              ),
                                            );
                                          } catch (e) {
                                            _searchController.text = search;
                                            _onSearchChanged();
                                          }
                                        },
                                      );
                                    }).toList(),
                                  ),
                                  const SizedBox(height: 30),
                                ],
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 24.0,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // Gradient Card with Icon
                                        Container(
                                          width: 140,
                                          height: 140,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                AppColors.primary,
                                                AppColors.primary.withValues(
                                                  alpha: 0.7,
                                                ),
                                              ],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                            ),
                                            shape: BoxShape.circle,
                                            boxShadow: AppShadows.card,
                                          ),
                                          child: const Icon(
                                            Icons.eco_outlined,
                                            size: 70,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(height: 32),
                                        // Title
                                        Text(
                                          "Discover Plant Care",
                                          style: TextStyle(
                                            color: Theme.of(
                                              context,
                                            ).textTheme.bodyLarge?.color,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: -0.5,
                                          ),
                                        ),
                                        const SizedBox(height: 12),
                                        // Subtitle
                                        Text(
                                          "Search for any plant to learn about\nwatering, sunlight, and care tips",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 16,
                                            height: 1.5,
                                          ),
                                        ),
                                        const SizedBox(height: 40),
                                        // Feature Cards
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            _buildFeatureCard(
                                              icon: Icons.water_drop_outlined,
                                              label: "Water\nSchedule",
                                            ),
                                            _buildFeatureCard(
                                              icon: Icons.wb_sunny_outlined,
                                              label: "Sunlight\nNeeds",
                                            ),
                                            _buildFeatureCard(
                                              icon: Icons.spa_outlined,
                                              label: "Care\nTips",
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 24),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  : ListView.builder(
                      controller: _scrollController,
                      padding: const EdgeInsets.only(top: 8, bottom: 20),
                      itemCount: _displayedItemCount < filteredPlants.length
                          ? _displayedItemCount +
                                1 // +1 for loading indicator
                          : filteredPlants.length,
                      itemBuilder: (context, index) {
                        // Show loading indicator at the end
                        if (index == _displayedItemCount &&
                            _displayedItemCount < filteredPlants.length) {
                          return Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                              child: _isLoadingMore
                                  ? CircularProgressIndicator(
                                      color: AppColors.primary,
                                    )
                                  : const SizedBox.shrink(),
                            ),
                          );
                        }

                        // Don't render items beyond what we want to display
                        if (index >= _displayedItemCount) {
                          return const SizedBox.shrink();
                        }

                        final plant = filteredPlants[index];
                        return Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: AppShadows.card,
                          ),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            title: Text(
                              plant['name'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                plant['scientific'],
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            trailing: Icon(
                              Icons.chevron_right,
                              color: Theme.of(context).primaryColor,
                            ),
                            onTap: () async {
                              await _recentSearchService.addRecentSearch(
                                plant['name'],
                              );
                              await _loadRecentSearches(); // Refresh list
                              if (!context.mounted) return;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PlantDetailScreen(plant: plant),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard({required IconData icon, required String label}) {
    return Container(
      width: 96,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: 0.3),
          width: 1.5,
        ),
      ),
      child: Column(
        children: [
          Icon(icon, size: 36, color: AppColors.primary),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.primary,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
