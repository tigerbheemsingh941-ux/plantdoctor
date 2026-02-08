import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../theme/app_theme.dart';
import 'widgets/plant_card.dart';
import 'widgets/weather_widget.dart';
import '../scanner/scanner_screen.dart';
import '../settings/settings_screen.dart';
import '../profile/profile_screen.dart';
import '../../providers/garden_provider.dart';
import '../../models/scan_result.dart';
import '../../models/plant.dart';
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

  final List<Map<String, dynamic>> _allPlants = [
    {
      "name": "Monstera",
      "scientific": "Monstera Deliciosa",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuAuSSTIBKebfo5SYuAFS6Fu0J78G1Rs77i8_EhWX9WfEQBXqR_trCzhX-dE-_8HPlYLkjBzRUO5ESLTQcYfONGrdy-DO7-Q-yJy8k2TTrL_ZSjTix1FRuhKZTeCXHxZEU-IzzCcDybjEpq_-gQ_EAq_O8BBgJLrSkPfjBuON9nAEJyw6x1W0pDMM6WqYHUO4kvSN6zdJ8V3vjXC0AL98V5qH09gmkBEaSWGOfLy38AzNfGpF5_9q5qpZ5W1LKdTKMndNFSwlFDX88k",
      "status": PlantStatus.healthy,
    },
    {
      "name": "Snake Plant",
      "scientific": "Sansevieria",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuBSU7CjUD8Sm6E8h_7qtu7Z_8x5_gf5i2mb9uAY6PAt4a64u4fIErgAo18-Rys1MJiYtjEy9mAH6Fk5m5v3TrZCoi2gz9_vabc2tXg4nypSmiHZ7QLGxmixqqpxWbL6ZYBxkWltcuYgYRDtXCXd4mTTLKVyNf8Vhp5B3pncTRFUle6HHrZBj_rWo-MYw1F0a912ie1pckMbbVH6C0G4vw095NF964tjUphMC9-sqvx-KgyY3uoNoXyuBnjNmC2Gu2kzqH1wAOp-Znc",
      "status": PlantStatus.thirsty,
    },
    {
      "name": "Fiddle Leaf",
      "scientific": "Ficus Lyrata",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuDj1mCITgOfHg9Pm7oQPC5-rRI6HwZDIn7waA9C3gHSR8I0RUn-Tpq60kG_r_fIT9jdw_zR3ze9WGY1XWXBiLObfBDKCaIzpa6GInzIvwEz1DIZOxrZf7denhy-IAB1ng9OVlgscm_eC4PNhjtIx8-ZiyINiSlPMjBgDXB59MN60dkRWY_7FGTJfhrXdlOIuK3qnQ6bx6OOUlpqDNzPFSkA3d0XCuTHbJLnnITiG0EpdNVoVaMqbQJxfAfAhEaYLLssud0-InHuuF8",
      "status": PlantStatus.actionNeeded,
    },
    {
      "name": "Golden Pothos",
      "scientific": "Epipremnum",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuBOcpB-IKf8dTD9jxI6VlaaBRo5EpHrrOnWoUp32H4Zz1LdoxVSHiyXnKNo-LBEZk5M1abNAY9f3AOCAOTzp2ev3H4U6udNhEhELuASlzBrX-NNoCun7MAN9IP8_4UL3RKR06r259akpmQFMg99WhNw4fz27k9X3YfHbSgYDggX5oI43fS3RBQ2abAOKuoqG6Wf0MSJ8aprHctoQ8l_GU2J5hon4tUSz5pxkUhwmRazBLJDpOh6Y6Smb8noZ8gYauBakK29G45Q4O4",
      "status": PlantStatus.healthy,
    },
    {
      "name": "Rubber Plant",
      "scientific": "Ficus Elastica",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuBdbY4GinnpYtDXyjmsJIPaYGifQ25GC7PQp3D14mtNFDwB90EBWAu4Zf4uXD4QmF77xMQ5CCzRu-naChBKuok8zgAHQrY5C8YPE1PGbtAmawkjgLTx8uvMsjGonpcdQZJkr7AmBKWS5sRv8F5jso-95L-JyWCFTBcNiKUXd5uvIad5_2cjT7NqSEwRhVvseEc82Qf6viP-EzJT_sOmT6qz5EDUVUsdU9e0DOHAuck5xlTiOG8-Cgi3jv27SKQcqbARLCHsT8kfbzs",
      "status": PlantStatus.healthy,
    },
    {
      "name": "ZZ Plant",
      "scientific": "Zamioculcas",
      "image":
          "https://lh3.googleusercontent.com/aida-public/AB6AXuBYaT82JT-0tcH5ltzYeLMN2yebi27T8UwJCdjzuk3bO72XHu7MWyH-FGPO-_KjqaVTdlU2T0upadSXwUTz31B4-muAPumd-lFQQSvhSEw8HVu8DxeyMEvU_UzdsdFuy-nbn2V22jfe7TVNWYVK_a1FfiqjoOdgeb-G2rXFWDwCPcBdF3n_JS1uLJYPf6PJTulLJcIwqZeW5-umycniglGAZhrA-MdUsgJ8sg9_bYit9G58X65YyAEzIRHmTTo2SfAGhOh9kohtxl0",
      "status": PlantStatus.healthy,
    },
  ];

  String get _greeting {
    final hour = DateTime.now().hour;
    if (hour < 12) return 'Good morning';
    if (hour < 17) return 'Good afternoon';
    return 'Good evening';
  }

  @override
  Widget build(BuildContext context) {
    // Access GardenProvider
    final gardenProvider = Provider.of<GardenProvider>(context);
    final userPlants = gardenProvider.scans;

    // Combine with demo plants if needed, or just use userPlants
    // For now, let's prepend user plants to the demo list for a hybrid view,
    // or strictly use userPlants if nonempty?
    // Plan: Show user plants first, then demo plants.

    // Convert demo plants to ScanResult like objects for unified list
    List<ScanResult> allDisplayPlants = [
      ...userPlants,
      // Convert demo map to ScanResult
      ..._allPlants.map(
        (p) => ScanResult(
          id: "demo_${p['name']}",
          imagePath: p['image'],
          plantName: p['name'], // Using name as title
          problem: p['status'] == PlantStatus.healthy
              ? 'Healthy'
              : 'Needs Action',
          solution: "This is a demo plant.",
          timestamp: DateTime.now().subtract(const Duration(days: 365)), // Old
          confidence: 1.0,
        ),
      ),
    ];

    final plants = allDisplayPlants.where((plant) {
      final name = plant.plantName.toLowerCase();
      // final scientific = plant.scientificName ... (ScanResult doesn't have scientific yet)
      final query = _searchQuery.toLowerCase();
      final matchesSearch = name.contains(query);

      if (_selectedStatusFilter != null) {
        final status = _mapProblemToStatus(plant.problem);
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
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(24, 8, 24, 160),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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

                    if (plant.id.startsWith("demo_")) {
                      displayScientific =
                          _allPlants.firstWhere(
                            (element) => element['name'] == plant.plantName,
                            orElse: () => {'scientific': ''},
                          )['scientific'] ??
                          "";
                    } else {
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
                    }

                    return PlantCard(
                      name: displayName,
                      scientificName: displayScientific,
                      imageUrl: plant.imagePath,
                      status: _mapProblemToStatus(plant.problem),
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

  PlantStatus _mapProblemToStatus(String problem) {
    final lower = problem.toLowerCase();
    if (lower == 'healthy') return PlantStatus.healthy;
    if (lower.contains('thirsty') ||
        lower.contains('water') ||
        lower.contains('dry') ||
        lower.contains('dehydrated')) {
      return PlantStatus.thirsty;
    }
    return PlantStatus.actionNeeded;
  }
}
