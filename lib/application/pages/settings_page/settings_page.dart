import 'package:finance_tracker/application/core/services/routing/route_utils.dart';
import 'package:finance_tracker/utils/models/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';

class SettingsPageWrapperProvider extends StatelessWidget {
  const SettingsPageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsPage();
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 25,
            right: 20,
            left: 20,
            bottom: 5,
          ),
          height: MediaQuery.of(context).size.height * 0.29,
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).colorScheme.primary,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Settings", style: AppTheme.lightHeadingText),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: CircleAvatar(
                      radius: 17.5,
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.primaryContainer,
                      child: const Icon(
                        Icons.settings,
                        size: 20,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/app_icon/finance_tracker_app_icon.png',
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Finance Tracker",
                            style: AppTheme.lightHeadingText.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Manage your finances easily",
                            style: AppTheme.lightBodyText.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
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
        Container(
          padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
          height: MediaQuery.of(context).size.height * 0.56,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  "General",
                  style: AppTheme.lightBodyText.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 10),
                _SettingsTile(
                  icon: Icons.notifications_outlined,
                  title: "Notifications",
                  subtitle: "Manage your notifications",
                  onTap: () {
                    _showComingSoonSnackBar(context);
                  },
                ),
                _SettingsTile(
                  icon: Icons.currency_exchange,
                  title: "Currency",
                  subtitle: "BDT (Tk)",
                  onTap: () {
                    _showComingSoonSnackBar(context);
                  },
                ),
                const SizedBox(height: 20),
                Text(
                  "Data",
                  style: AppTheme.lightBodyText.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 10),
                _SettingsTile(
                  icon: Icons.backup_outlined,
                  title: "Backup Data",
                  subtitle: "Export your financial data",
                  onTap: () {
                    _showComingSoonSnackBar(context);
                  },
                ),
                _SettingsTile(
                  icon: Icons.restore,
                  title: "Restore Data",
                  subtitle: "Import previously backed up data",
                  onTap: () {
                    _showComingSoonSnackBar(context);
                  },
                ),
                _SettingsTile(
                  icon: Icons.delete_outline,
                  title: "Clear All Data",
                  subtitle: "Delete all transactions and categories",
                  iconColor: Colors.red,
                  onTap: () {
                    _showClearDataDialog(context);
                  },
                ),
                const SizedBox(height: 20),
                Text(
                  "About",
                  style: AppTheme.lightBodyText.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 10),
                _SettingsTile(
                  icon: Icons.info_outline,
                  title: "About App",
                  subtitle: "Learn more about Finance Tracker",
                  onTap: () {
                    context.pushNamed(PAGES.about.screenName);
                  },
                ),
                _SettingsTile(
                  icon: Icons.privacy_tip_outlined,
                  title: "Privacy Policy",
                  subtitle: "Read our privacy policy",
                  onTap: () {
                    context.pushNamed(PAGES.privacyPolicy.screenName);
                  },
                ),
                _SettingsTile(
                  icon: Icons.description_outlined,
                  title: "Terms of Service",
                  subtitle: "Read our terms of service",
                  onTap: () {
                    context.pushNamed(PAGES.termsOfService.screenName);
                  },
                ),
                const SizedBox(height: 20),
                Text(
                  "Share",
                  style: AppTheme.lightBodyText.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 10),
                _SettingsTile(
                  icon: Icons.share_outlined,
                  title: "Share App",
                  subtitle: "Share Finance Tracker with friends",
                  onTap: () {
                    _shareApp();
                  },
                ),
                // _SettingsTile(
                //   icon: Icons.star_outline,
                //   title: "Rate App",
                //   subtitle: "Rate us on Play Store",
                //   onTap: () {
                //     _showComingSoonSnackBar(context);
                //   },
                // ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showComingSoonSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Coming soon!"),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Theme.of(context).colorScheme.primary,
        duration: const Duration(seconds: 1),
      ),
    );
  }

  void _shareApp() {
    SharePlus.instance.share(
      ShareParams(
        text: '📊 Check out Finance Tracker - A simple and beautiful app to manage your personal finances!\n\n'
            '✅ Track income & expenses\n'
            '✅ Visual analytics & charts\n'
            '✅ Organize by categories\n'
            '✅ 100% offline & private\n\n'
            'Download now: https://github.com/Kawser-Miah/finance_tracker/tree/main/Andriod%20APK',
        subject: 'Finance Tracker - Personal Finance App',
      ),
    );
  }

  void _showClearDataDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text("Clear All Data"),
        content: const Text(
          "Are you sure you want to delete all your data? This action cannot be undone.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Cancel",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text("Feature coming soon!"),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  duration: const Duration(seconds: 1),
                ),
              );
            },
            child: const Text("Delete", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final Color? iconColor;

  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: (iconColor ?? Theme.of(context).colorScheme.primary)
                    .withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: iconColor ?? Theme.of(context).colorScheme.primary,
                size: 24,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTheme.lightBodyText.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: AppTheme.lightBodyText.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right, color: Colors.black38),
          ],
        ),
      ),
    );
  }
}
