import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../theme/app_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../providers/app_state.dart';
import '../profile/profile_screen.dart';
import 'privacy_policy_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: _buildAppBar(context),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          const SizedBox(height: 10),
          _buildProfileCard(context),
          const SizedBox(height: 30),
          _buildSectionHeader(context, "ACCOUNT"),
          const SizedBox(height: 10),
          _buildAccountSection(context),
          const SizedBox(height: 30),
          _buildSectionHeader(context, "PREFERENCES"),
          const SizedBox(height: 10),
          _buildPreferencesSection(context),
          const SizedBox(height: 30),
          _buildSectionHeader(context, "SUPPORT"),
          const SizedBox(height: 10),
          _buildSupportSection(context),
          const SizedBox(height: 40),
          _buildLogoutButton(context),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      centerTitle: true,
      leading: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          shape: BoxShape.circle,
          boxShadow: AppShadows.card,
        ),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      title: Text(
        "Settings",
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).textTheme.titleLarge?.color,
        ),
      ),
    );
  }

  Widget _buildProfileCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, AppColors.primary.withValues(alpha: 0.8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: AppShadows.floating,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3),
            ),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: const CachedNetworkImageProvider(
                "https://lh3.googleusercontent.com/aida-public/AB6AXuDpvVdv6n8FlYj_VMozhWL7_emJqNQIFF7-g3niPpDvKMuwcgjTgYu5UN-m0ZnsnHWkKb0rgEruhDZbNNt1dHkfEGqth1pC2WCzv73FF9wvSLRp6eXz64LfbWM4jhDRXioOHx50-HuCpTTxkCJoiSM_Ayi__WBQv3Vs8KCkEUSdP5ZNTl9DUFNXpaekxj962mUmvDufOpxz7zUwAfcj2jUrE8FSS-4sH_Pz1jJg-Dk7iZgv95q0XR80IzZMHsbaGD1mSyrGifF6-H8",
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Jane Evergreen",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "jane.ever@botany.app",
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.8),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ProfileScreen()),
              );
            },
            icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.edit_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).hintColor,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildAccountSection(BuildContext context) {
    return _buildSectionContainer(
      context,
      children: [
        _buildListTile(
          context,
          icon: Icons.workspace_premium,
          iconColor: AppColors.primary,
          title: "Subscription",
          trailing: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: AppColors.primary.withValues(alpha: 0.2),
              ),
            ),
            child: const Text(
              "PRO",
              style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildPreferencesSection(BuildContext context) {
    return _buildSectionContainer(
      context,
      children: [
        Consumer<AppState>(
          builder: (context, appState, _) {
            final isDark = appState.themeMode == ThemeMode.dark;
            return _buildListTile(
              context,
              icon: isDark ? Icons.dark_mode : Icons.light_mode,
              iconColor: AppColors.primary,
              title: "Dark Mode",
              trailing: Switch.adaptive(
                value: isDark,
                activeTrackColor: AppColors.primary,
                onChanged: (value) {
                  appState.toggleTheme(value);
                },
              ),
            );
          },
        ),
        _buildDivider(context),
        Consumer<AppState>(
          builder: (context, appState, _) {
            if (!appState.isWateringReminderEnabled) {
              return _buildListTile(
                context,
                icon: Icons.water_drop,
                iconColor: AppColors.primary,
                title: "Watering Reminders",
                subtitle: "Daily morning alerts",
                trailing: Switch.adaptive(
                  value: appState.isWateringReminderEnabled,
                  activeTrackColor: AppColors.primary,
                  onChanged: (val) {
                    appState.toggleWateringReminder(val);
                  },
                ),
              );
            }
            return ExpansionTile(
              initiallyExpanded: true,
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.water_drop,
                  color: AppColors.primary,
                  size: 22,
                ),
              ),
              title: Text(
                "Watering Reminders",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                "Daily at ${appState.wateringReminderTime.format(context)}",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).hintColor,
                ),
              ),
              trailing: Switch.adaptive(
                value: appState.isWateringReminderEnabled,
                activeTrackColor: AppColors.primary,
                onChanged: (val) {
                  appState.toggleWateringReminder(val);
                },
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 16,
                  ),
                  child: InkWell(
                    onTap: () async {
                      final TimeOfDay? picked = await showTimePicker(
                        context: context,
                        initialTime: appState.wateringReminderTime,
                      );
                      if (picked != null) {
                        appState.updateWateringReminderTime(picked);
                      }
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: AppColors.primary.withValues(alpha: 0.2),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.access_time,
                            size: 20,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            "Set Reminder Time",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const Spacer(),
                          Text(
                            appState.wateringReminderTime.format(context),
                            style: Theme.of(context).textTheme.titleSmall
                                ?.copyWith(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        _buildDivider(context),
        _buildListTile(
          context,
          icon: Icons.language,
          iconColor: AppColors.primary,
          title: "Language",
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "English",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).hintColor,
                ),
              ),
              const SizedBox(width: 8),
              Icon(
                Icons.chevron_right,
                color: Theme.of(context).hintColor,
                size: 20,
              ),
            ],
          ),
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildSupportSection(BuildContext context) {
    return _buildSectionContainer(
      context,
      children: [
        _buildListTile(
          context,
          icon: Icons.help_outline,
          iconColor: AppColors.primary,
          title: "Help Center",
          showChevron: true,
          onTap: () {},
        ),
        _buildDivider(context),
        _buildListTile(
          context,
          icon: Icons.privacy_tip_outlined,
          iconColor: AppColors.primary,
          title: "Privacy Policy",
          showChevron: true,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PrivacyPolicyScreen(),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildSectionContainer(
    BuildContext context, {
    required List<Widget> children,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: AppShadows.card,
      ),
      child: Column(children: children),
    );
  }

  Widget _buildDivider(BuildContext context) {
    return Divider(
      height: 1,
      color: Theme.of(context).dividerColor.withValues(alpha: 0.5),
      indent: 60,
      endIndent: 20,
    );
  }

  Widget _buildListTile(
    BuildContext context, {
    required IconData icon,
    required Color iconColor,
    required String title,
    String? subtitle,
    Widget? trailing,
    bool showChevron = false,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: iconColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: iconColor, size: 22),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            trailing ?? const SizedBox.shrink(),
            if (showChevron) ...[
              const SizedBox(width: 8),
              Icon(
                Icons.chevron_right,
                color: Theme.of(context).hintColor,
                size: 20,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.red.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).cardColor,
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: Colors.red.withValues(alpha: 0.1),
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.logout, color: Colors.redAccent, size: 20),
            const SizedBox(width: 10),
            Text(
              "Log Out",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
