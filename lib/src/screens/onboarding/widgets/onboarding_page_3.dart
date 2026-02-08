import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    const sageGreen = Color(0xFF88a67e);
    const sageDark = Color(0xFF3a4734);
    const healthyGreen = Color(0xFF66b814);
    const charcoal = Color(0xFF121412);

    return SingleChildScrollView(
      child: Column(
        children: [
          // Plant Image with Status Badge
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CachedNetworkImage(
                      imageUrl:
                          "https://lh3.googleusercontent.com/aida-public/AB6AXuCa9arjBsf_4U-p8TFRNW4qTXanLPpDkDYc_bSmFp7RUGvmjcaCUVcP2cU0udnB6yhoycL6gUcQspTJQx4mZbp2gm4u5aqMKGHPO4Fnjb9cBAX0anDl5sFhOrgtPJaVI7ejShdAHZnKv-VpP99f1CK_qUAg45z6l3f2UsPLDsawRCVlWpfMMLyp1qx7WP-BHpuCxuYDX_7BeVzeWQ3pcKMWoYDcAESpC65rz3ZnQ5gupjT-1YNOKwI7xW0ReB1TdWFk8sgcysdmpnw",
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Container(color: sageDark),
                    ),
                    // Gradient overlay
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            charcoal,
                            charcoal.withValues(alpha: 0.5),
                            Colors.transparent,
                          ],
                          stops: const [0.0, 0.3, 1.0],
                        ),
                      ),
                    ),
                    // Plant Info
                    Positioned(
                      bottom: 24,
                      left: 24,
                      right: 24,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: healthyGreen,
                              borderRadius: BorderRadius.circular(999),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.3),
                                  blurRadius: 10,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.check_circle,
                                  color: charcoal,
                                  size: 18,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  "Healthy",
                                  style: GoogleFonts.manrope(
                                    color: charcoal,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "Lush Monstera",
                            style: GoogleFonts.manrope(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              letterSpacing: -0.5,
                            ),
                          ),
                          Text(
                            "Monstera Deliciosa",
                            style: GoogleFonts.manrope(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFadc893),
                              fontStyle: FontStyle.italic,
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

          // Plant Stats Section
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PLANT STATS",
                  style: GoogleFonts.manrope(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFadc893),
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: _buildStatCard(
                        icon: Icons.light_mode,
                        label: "Sunlight",
                        value: "Indirect",
                        sageDark: sageDark,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildStatCard(
                        icon: Icons.water_drop,
                        label: "Water",
                        value: "Weekly",
                        sageDark: sageDark,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildStatCard(
                        icon: Icons.water,
                        label: "Humidity",
                        value: "High",
                        sageDark: sageDark,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 32),

                // Care Log Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "CARE LOG",
                      style: GoogleFonts.manrope(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFadc893),
                        letterSpacing: 1.5,
                      ),
                    ),
                    Text(
                      "History",
                      style: GoogleFonts.manrope(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFadc893).withValues(alpha: 0.6),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: sageDark.withValues(alpha: 0.2),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.05),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      _buildCareLogItem(
                        icon: Icons.camera_outdoor,
                        title: "Last Scan",
                        subtitle: "Diagnosis: Excellent health",
                        date: "Oct 24, 2023",
                        sageDark: sageDark,
                        healthyGreen: healthyGreen,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Divider(
                          color: Colors.white.withValues(alpha: 0.05),
                          height: 1,
                        ),
                      ),
                      _buildCareLogItem(
                        icon: Icons.local_drink,
                        title: "Repotted",
                        subtitle: "Terra cotta, 12\" diameter",
                        date: "Sept 12, 2023",
                        sageDark: sageDark,
                        showIndicator: false,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 32),

                // Action Buttons
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: sageGreen,
                      foregroundColor: charcoal,
                      elevation: 4,
                      shadowColor: Colors.black.withValues(alpha: 0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.photo_camera, size: 20),
                        const SizedBox(width: 8),
                        Text(
                          "Scan Again",
                          style: GoogleFonts.manrope(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: BorderSide(
                        color: Colors.white.withValues(alpha: 0.1),
                      ),
                      backgroundColor: Colors.white.withValues(alpha: 0.05),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      "Care Guide",
                      style: GoogleFonts.manrope(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard({
    required IconData icon,
    required String label,
    required String value,
    required Color sageDark,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: sageDark.withValues(alpha: 0.3),
        border: Border.all(color: sageDark.withValues(alpha: 0.5)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Icon(icon, color: Color(0xFFadc893), size: 24),
          const SizedBox(height: 8),
          Text(
            label.toUpperCase(),
            style: GoogleFonts.manrope(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Color(0xFFadc893).withValues(alpha: 0.6),
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: GoogleFonts.manrope(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCareLogItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required String date,
    required Color sageDark,
    Color? healthyGreen,
    bool showIndicator = true,
  }) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: sageDark.withValues(alpha: 0.4),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Color(0xFF88a67e), size: 24),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.manrope(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    date,
                    style: GoogleFonts.manrope(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFadc893).withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  if (showIndicator) ...[
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: healthyGreen ?? Color(0xFF66b814),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],
                  Expanded(
                    child: Text(
                      subtitle,
                      style: GoogleFonts.manrope(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFadc893),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
