import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../theme/app_theme.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    // User requested Organic Tech Theme: Primary Sage Green (#8A9A5B)
    return Column(
      children: [
        // Hero Illustration Area
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 12.0,
                  ),
                  child: Center(
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(minHeight: 280),
                      decoration: BoxDecoration(
                        color: const Color(0xFF162111).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.circular(
                          24,
                        ), // Organic rounded
                        border: Border.all(
                          color: Colors.white.withValues(alpha: 0.05),
                        ),
                        image: const DecorationImage(
                          image: CachedNetworkImageProvider(
                            "https://lh3.googleusercontent.com/aida-public/AB6AXuAxjoB1qtATiUXoi2PrDBQ6Qdy2WWMOrTnVL9EguQnOxviTbtH82BLlr6E9YcvlNR6l_y2Aq8j3xfD72gqzWd5mvkcerjIb1RZDZDP73GmP8LJymmOSceqdt9ITvC6i6onDzSzfhJhT3DUMhEMeY1bYoED7khbpmIOeEgFnsTLFHMLxSIpXbPoiN0W2m26kdQvlxlz6691zUUHKF1QOLfQDBWNEQW1dNglny6ViE--p5NAU6tG3fpeXwe18QZBu-WP0QDxAZ-4Iw1E",
                          ),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Color.fromRGBO(22, 33, 17, 0.3), // Reduced opacity
                            BlendMode.srcOver,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Text Content
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
                      "Snap a Photo",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800, // Extra bold for headlines
                        height: 1.1,
                        letterSpacing: -0.5,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: 280,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text:
                                  "Our AI analyzes your plant in seconds to identify ",
                            ),
                            const TextSpan(
                              text: "pests, diseases, or nutrient deficiencies",
                            ),
                            const TextSpan(text: "."),
                          ],
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.625,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? AppColors.onboardingAccent
                              : const Color(0xFF4B5563),
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
}
