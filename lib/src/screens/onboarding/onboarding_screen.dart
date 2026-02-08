import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../providers/app_state.dart';
import '../../theme/app_theme.dart';
import 'widgets/onboarding_page_1.dart';
import 'widgets/onboarding_page_2.dart';
import 'widgets/onboarding_page_3.dart';
import 'widgets/onboarding_page_4.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onSkip() async {
    await Provider.of<AppState>(context, listen: false).completeOnboarding();
  }

  void _onNext() {
    if (_currentPage < 3) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _onSkip();
    }
  }

  @override
  Widget build(BuildContext context) {
    // User requested: Primary Sage Green (#8A9A5B)
    const primaryColor = AppColors.primary;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // Top Bar
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Skip button only on Page 1, 2, and 3
                  if (_currentPage < 3)
                    TextButton(
                      onPressed: _onSkip,
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: null,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                      ),
                      child: Text(
                        "Skip",
                        style: GoogleFonts.mPlusRounded1c(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isDark
                              ? Colors.white.withValues(alpha: 0.7)
                              : Colors.black54,
                        ),
                      ),
                    )
                  else
                    const SizedBox(height: 48), // Spacer to maintain Row height
                ],
              ),
            ),

            // Page View
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: const [
                  OnboardingPage1(),
                  OnboardingPage2(),
                  OnboardingPage3(),
                  OnboardingPage4(),
                ],
              ),
            ),

            // Bottom Controls
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
              child: Column(
                children: [
                  // Page Indicators
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      bool isActive = _currentPage == index;
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        height: 10,
                        width: isActive ? 32 : 10,
                        decoration: BoxDecoration(
                          color: isActive
                              ? primaryColor
                              : (isDark
                                    ? Colors.white.withValues(alpha: 0.1)
                                    : Colors.grey[300]),
                          borderRadius: BorderRadius.circular(999),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 32),

                  // Main Button
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: _onNext,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _currentPage == 3 ? "Get Started" : "Next",
                            style: GoogleFonts.mPlusRounded1c(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          if (_currentPage == 0) ...[
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.arrow_forward,
                              size: 20,
                              color: Colors.white,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
