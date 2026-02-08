import 'package:flutter/material.dart';
import '../../../theme/app_theme.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    // User requested Organic Tech Theme: Primary Sage Green (#8A9A5B)
    const primaryColor = AppColors.primary;
    const cardBgColor = Color(0xFF26321A);
    const textAccentColor = AppColors.onboardingAccent;

    return Column(
      children: [
        // Main Content Wrapper (matches Page 1/2 structure)
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Visual Hero Section (Mock Diagnosis Card)
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                  child: Center(
                    child: Container(
                      constraints: const BoxConstraints(
                        minHeight: 360,
                        maxHeight: 500, // Matches Page 1/2 constraints
                      ),
                      decoration: BoxDecoration(
                        color: cardBgColor,
                        borderRadius: BorderRadius.circular(
                          24,
                        ), // Organic rounded
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.5),
                            blurRadius: 25,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Image Area
                          Expanded(
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://lh3.googleusercontent.com/aida-public/AB6AXuCa9arjBsf_4U-p8TFRNW4qTXanLPpDkDYc_bSmFp7RUGvmjcaCUVcP2cU0udnB6yhoycL6gUcQspTJQx4mZbp2gm4u5aqMKGHPO4Fnjb9cBAX0anDl5sFhOrgtPJaVI7ejShdAHZnKv-VpP99f1CK_qUAg45z6l3f2UsPLDsawRCVlWpfMMLyp1qx7WP-BHpuCxuYDX_7BeVzeWQ3pcKMWoYDcAESpC65rz3ZnQ5gupjT-1YNOKwI7xW0ReB1TdWFk8sgcysdmpnw",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                // Healthy Badge
                                Positioned(
                                  top: 16,
                                  right: 16,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(
                                        999,
                                      ), // rounded-full
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withValues(
                                            alpha: 0.2,
                                          ),
                                          blurRadius: 10,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(
                                          Icons.check_circle,
                                          color: Color(0xFF1A2211),
                                          size: 16,
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          "HEALTHY",
                                          style: TextStyle(
                                            color: const Color(0xFF1A2211),
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.5, // wider
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Card Content
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DIAGNOSIS RESULT",
                                  style: TextStyle(
                                    color: AppColors
                                        .onboardingAccent, // Light Sage for contrast
                                    fontSize: 11, // Slightly smaller
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "Lush Monstera",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: -0.015,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  "No pests or diseases detected. Your plant is thriving in its current environment.",
                                  style: TextStyle(
                                    color: textAccentColor,
                                    fontSize: 14,
                                    height: 1.5,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                const Divider(color: Colors.white10),
                                const SizedBox(height: 12),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        _buildIconBadge(
                                          Icons.light_mode,
                                          primaryColor,
                                        ),
                                        Transform.translate(
                                          offset: const Offset(-8, 0),
                                          child: _buildIconBadge(
                                            Icons.water_drop,
                                            primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        backgroundColor:
                                            primaryColor, // Solid color for visibility
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 16,
                                          vertical: 8,
                                        ),
                                      ),
                                      child: Text(
                                        "View Guide",
                                        style: TextStyle(
                                          color: const Color(
                                            0xFF1A2211,
                                          ), // Dark text for contrast
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Text Content Area
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  bottom: 32,
                  top: 8,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: Column(
                  children: [
                    Text(
                      "Instant Diagnosis",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        height: 1.1,
                      ),
                    ),
                    const SizedBox(height: 12), // Adjusted spacing
                    SizedBox(
                      width:
                          280, // Constrain width for better readability like Page 1
                      child: Text(
                        "Get clear, simple advice to keep your plants happy and healthy every day.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? textAccentColor
                              : const Color(
                                  0xFF4B5563,
                                ), // Match Page 1 color style
                          fontSize: 16,
                          height: 1.625, // Match Page 1 line height
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildIconBadge(IconData icon, Color color) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.4),
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xFF26321A),
          width: 2,
        ), // Match card bg
      ),
      child: Icon(icon, size: 12, color: Colors.white),
    );
  }
}
