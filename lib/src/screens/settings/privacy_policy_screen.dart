import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Privacy Policy"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: theme.iconTheme.color),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(context, "1. Introduction"),
            _buildSectionText(
              context,
              "Welcome to Plant Doctor. We value your privacy and are committed to protecting your personal data. This Privacy Policy explains how we collect, use, and safeguard your information when you use our mobile application.",
            ),

            _buildSectionTitle(context, "2. Information We Collect"),
            _buildSubSectionTitle(context, "a. Personal Data"),
            _buildSectionText(
              context,
              "We may collect personal information such as your name, email address, and username to create a personalized experience. This data is primarily stored locally on your device.",
            ),
            _buildSubSectionTitle(context, "b. Device Permissions"),
            _buildSectionText(
              context,
              "• Camera & Gallery: We require access to your camera and photo gallery to allow you to take or upload photos of your plants for diagnosis and to set your profile picture.\n"
              "• Location: We access your precise location to provide accurate local weather updates essential for plant care advice. You can disable this at any time in your device settings, though some features may be limited.",
            ),

            _buildSectionTitle(context, "3. How We Use Your Information"),
            _buildSectionText(
              context,
              "We use the collected information for the following purposes:\n"
              "• To diagnose plant diseases using AI analysis.\n"
              "• To provide location-based weather alerts and watering reminders.\n"
              "• To manage your personal garden and plant history.\n"
              "• To improve app functionality and user experience.",
            ),

            _buildSectionTitle(context, "4. Third-Party Services"),
            _buildSectionText(
              context,
              "We utilize trusted third-party services to enhance our app's functionality:\n"
              "• Google Gemini API: Images used for plant diagnosis are processed by Google's Gemini AI. These images are not used by us for any other purpose.\n"
              "• Weather Services: Your location data is used to fetch weather information from third-party weather providers.",
            ),

            _buildSectionTitle(context, "5. Data Security"),
            _buildSectionText(
              context,
              "We implement appropriate security measures to protect your data. Most of your personal data, including your plant collection and journal, is stored locally on your device. We do not sell your personal data to third parties.",
            ),

            _buildSectionTitle(context, "6. Contact Us"),
            _buildSectionText(
              context,
              "If you have any questions or concerns about this Privacy Policy, please contact us at support@plantdoctor.app.",
            ),

            const SizedBox(height: 40),
            Center(
              child: Text(
                "Last Updated: February 2026",
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.hintColor,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 12),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColors.primary,
        ),
      ),
    );
  }

  Widget _buildSubSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 8),
      child: Text(
        title,
        style: Theme.of(
          context,
        ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildSectionText(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        height: 1.6,
        color: Theme.of(
          context,
        ).textTheme.bodyMedium?.color?.withValues(alpha: 0.8),
      ),
    );
  }
}
