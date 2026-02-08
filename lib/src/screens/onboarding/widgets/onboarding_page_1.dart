import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../theme/app_theme.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    // Colors from HTML: primary #8a9a5b, bg-light #f7f7f6, bg-dark #1a1c16
    const textGray600 = Color(0xFF4B5563);

    return Column(
      children: [
        // Main Content Wrapper
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Header Image
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                  child: Center(
                    child: Container(
                      constraints: const BoxConstraints(
                        minHeight: 320,
                        maxHeight: 500, // Approximate max-h-[55vh]
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24), // rounded-2xl
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.5),
                            blurRadius: 25, // shadow-2xl
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                "https://lh3.googleusercontent.com/aida-public/AB6AXuDeXRykS_E87vT1LA3tLpEPJSY5tmuVtT0wPrGsoIkf_dP_x4QJd71-0FQRrS_gGCCyob_q5Jo11WjR-gmx5lBlUxvxEc0kDgP-qCijbQHJ6NyvF7ojZGW_hy_htCwoY6LM3ejYTqudW05pOZyQGOcAercVX6UL5vr5wu9rhIoS8E03ZDCgTvgVvCIaj4tfbMiynrkvHSCtHn7sRUk0IZdZRXiKO4HrB3mtryR6HEjGRK7u3Ox_O6rkQWtEmO_HHeRHI1wy58xLxCI",
                            fit: BoxFit.cover,
                          ),
                          // Gradient Overlay
                          const DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Color(0x66000000), // black/40
                                  Colors.transparent,
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Content Section
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  bottom: 32,
                  top: 8,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ), // rounded-t-3xl
                ),
                child: Column(
                  children: [
                    Text(
                      "One Photo,\nOne Answer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        height: 1.1,
                        letterSpacing: -0.5,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.grey[900],
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: 280,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(text: "Snap a picture of your "),
                            const TextSpan(text: "sick plant"),
                            const TextSpan(
                              text:
                                  " and get an instant diagnosis and treatment plan.",
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.625,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? AppColors.onboardingAccent
                              : textGray600,
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
