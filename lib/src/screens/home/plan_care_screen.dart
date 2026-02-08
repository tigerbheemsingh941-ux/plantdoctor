import 'package:flutter/material.dart';

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
  final RecentSearchService _recentSearchService = RecentSearchService();
  List<String> _recentSearches = [];

  @override
  void initState() {
    super.initState();
    // Load plants from provider
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<UserPlantProvider>(context, listen: false).loadPlants();
    });
    _loadRecentSearches();
    _searchController.addListener(_onSearchChanged);
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
    super.dispose();
  }

  void _onSearchChanged() {
    // Just trigger rebuild, filtering happens in build
    setState(() {});
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
                  ? SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (_recentSearches.isNotEmpty) ...[
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  avatar: const Icon(Icons.history, size: 16),
                                  onPressed: () {
                                    try {
                                      final plant = allPlants.firstWhere(
                                        (p) => p['name'] == search,
                                      );
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PlantDetailScreen(plant: plant),
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 64,
                                  color: Colors.grey.withValues(alpha: 0.5),
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  "Search for a plant to see care details",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 24),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.only(top: 8, bottom: 20),
                      itemCount: filteredPlants.length,
                      itemBuilder: (context, index) {
                        final plant = filteredPlants[index];
                        return Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.05),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
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
                                  fontStyle: FontStyle.italic,
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
}
