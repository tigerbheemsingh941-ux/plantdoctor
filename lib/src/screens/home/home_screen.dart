import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../theme/app_theme.dart';
import 'widgets/plant_card.dart';
import 'widgets/weather_widget.dart';
import '../scanner/scanner_screen.dart';
import '../settings/settings_screen.dart';
import '../profile/profile_screen.dart';
import '../../providers/garden_provider.dart';

import '../../models/plant.dart';
import '../../models/scan_result.dart';
import '../diagnosis/diagnosis_screen.dart';
import 'plan_care_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchQuery = "";
  PlantStatus? _selectedStatusFilter;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Update greeting every minute
    _timer = Timer.periodic(const Duration(minutes: 1), (timer) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String get _greeting {
    final hour = DateTime.now().hour;
    if (hour < 5) return 'Good night';
    if (hour < 12) return 'Good morning';
    if (hour < 16) return 'Good afternoon';
    if (hour < 21) return 'Good evening';
    return 'Good night';
  }

  @override
  Widget build(BuildContext context) {
    // Access GardenProvider
    final gardenProvider = Provider.of<GardenProvider>(context);
    final userPlants = gardenProvider.scans;

    final plants = userPlants.where((plant) {
      final name = plant.plantName.toLowerCase();
      // final scientific = plant.scientificName ... (ScanResult doesn't have scientific yet)
      final query = _searchQuery.toLowerCase();
      final matchesSearch = name.contains(query);

      if (_selectedStatusFilter != null) {
        final status = _mapToPlantStatus(plant);
        return matchesSearch && status == _selectedStatusFilter;
      }
      return matchesSearch;
    }).toList();

    return Scaffold(
      extendBody: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              // Enhanced AppBar
              SliverAppBar(
                floating: true,
                pinned: true,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                elevation: 0,
                expandedHeight: 90,
                toolbarHeight: 90,
                flexibleSpace: FlexibleSpaceBar(
                  expandedTitleScale: 1,
                  titlePadding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                    bottom: 15,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            _greeting.toUpperCase(),
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(
                                context,
                              ).textTheme.bodySmall?.color,
                              letterSpacing: 1.5,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "My Garden",
                            style: Theme.of(context).textTheme.headlineMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(
                                    context,
                                  ).textTheme.titleLarge?.color,
                                ),
                          ),
                        ],
                      ),
                      Row(children: [const WeatherWidget()]),
                    ],
                  ),
                ),
              ),

              // Search Bar
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  child: Container(
                    height: 54,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: Theme.of(context).iconTheme.color,
                          size: 26,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                _searchQuery = value;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: "Search your plants...",
                              hintStyle: TextStyle(
                                color: Theme.of(context).hintColor,
                                fontSize: 16,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: _showFilterOptions,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: _selectedStatusFilter != null
                                  ? AppColors.primary
                                  : Theme.of(context).canvasColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.tune_rounded,
                              color: _selectedStatusFilter != null
                                  ? Colors.white
                                  : Theme.of(context).iconTheme.color,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Grid
              if (plants.isEmpty)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              color: AppColors.primary.withValues(alpha: 0.1),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.add_a_photo_outlined,
                              size: 48,
                              color: AppColors.primary,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            "Add your first plant",
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurface,
                                ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Snap a photo to identify and\ncare for your plants",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Theme.of(
                                context,
                              ).colorScheme.onSurfaceVariant,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 32),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const ScannerScreen(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.camera_alt_rounded),
                            label: const Text("Scan Now"),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              else
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(24, 8, 24, 160),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 24,
                          crossAxisSpacing: 20,
                          childAspectRatio: 0.7, // Taller cards
                        ),
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final plant = plants[index];

                      // Parse name if it contains scientific name in brackets
                      String displayName = plant.plantName;
                      String displayScientific = "";

                      // Try to parse "Common (Scientific)"
                      final match = RegExp(
                        r'^(.*)\s+\((.*)\)$',
                      ).firstMatch(plant.plantName);
                      if (match != null) {
                        displayName = match.group(1)?.trim() ?? plant.plantName;
                        displayScientific = match.group(2)?.trim() ?? "";
                      } else {
                        // Fallback if no scientific name found in brackets
                        // User wants to remove date, so we can prioritize another detail or leave empty
                        // But for now let's try to just show nothing if no scientific name is parsed
                        // or maybe the problem?
                        displayScientific = plant.problem;
                      }

                      return PlantCard(
                        name: displayName,
                        scientificName: displayScientific,
                        imageUrl: plant.imagePath,
                        status: _mapToPlantStatus(plant),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DiagnosisScreen(
                                scanResult: plant,
                                isHistoryMode: true,
                              ),
                            ),
                          );
                        },
                      );
                    }, childCount: plants.length),
                  ),
                ),
            ],
          ),

          // Glassmorphism Bottom Nav
          Positioned(
            left: 20,
            right: 20,
            bottom: 30,
            child: _buildBottomNavigationBar(context),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(bottom: 20),
      // Gradient fade for the background behind the floating bar
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Theme.of(context).scaffoldBackgroundColor,
            Theme.of(context).scaffoldBackgroundColor.withValues(alpha: 0.0),
          ],
        ),
      ),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            // Pill background
            Container(
              width: 320,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xFF282A22), // Dark charcoal/slate
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left Side
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Home Button
                        GestureDetector(
                          onTap: () {}, // Already Home
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home_rounded,
                                color: Colors.white,
                                size: 24,
                              ),
                              Text(
                                "Home",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Plan Care Button
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const PlanCareScreen(),
                              ),
                            );
                          },
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.calendar_month_rounded,
                                color: Colors.grey,
                                size: 24,
                              ),
                              Text(
                                "Plant Care",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 40), // Space for FAB
                  // Right Side
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Profile Button
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const ProfileScreen(),
                              ),
                            );
                          },
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person_rounded,
                                color: Colors.grey,
                                size: 24,
                              ),
                              Text(
                                "Profile",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Settings Button
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const SettingsScreen(),
                              ),
                            );
                          },
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.settings_rounded,
                                color: Colors.grey,
                                size: 24,
                              ),
                              Text(
                                "Settings",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Floating Action Button
            Positioned(
              top: -25,
              child: GestureDetector(
                onTap: () {
                  // Navigate to Scanner
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ScannerScreen()),
                  );
                },
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      width: 5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary.withValues(alpha: 0.4),
                        blurRadius: 15,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.camera_alt_rounded,
                    color: Color(0xFF1A1C16), // Dark icon on green
                    size: 32,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showFilterOptions() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Filter Plants",
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(
                              context,
                            ).textTheme.titleLarge?.color,
                          ),
                    ),
                    if (_selectedStatusFilter != null)
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _selectedStatusFilter = null;
                          });
                          Navigator.pop(context);
                        },
                        child: const Text("Clear"),
                      ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildFilterOption("All Plants", null),
                _buildFilterOption("Healthy", PlantStatus.healthy),
                _buildFilterOption("Thirsty", PlantStatus.thirsty),
                _buildFilterOption("Action Needed", PlantStatus.actionNeeded),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildFilterOption(String title, PlantStatus? status) {
    final isSelected = _selectedStatusFilter == status;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          color: isSelected ? AppColors.primary : null,
        ),
      ),
      trailing: isSelected
          ? const Icon(Icons.check_circle, color: AppColors.primary)
          : const Icon(Icons.circle_outlined, color: Colors.grey),
      onTap: () {
        setState(() {
          _selectedStatusFilter = status;
        });
        Navigator.pop(context);
      },
    );
  }

  PlantStatus _mapToPlantStatus(ScanResult plant) {
    // 1. Check explicit health status
    final statusLower = plant.healthStatus.toLowerCase();
    if (statusLower == 'healthy') return PlantStatus.healthy;

    // 2. Check keywords in diagnosis for "Thirsty"
    final problemLower = plant.problem.toLowerCase();
    if (problemLower.contains('thirsty') ||
        problemLower.contains('water') ||
        problemLower.contains('dry') ||
        problemLower.contains('dehydrated')) {
      return PlantStatus.thirsty;
    }

    // 3. Default to Action Needed for Needs Attention/Critical/Error
    return PlantStatus.actionNeeded;
  }
}
