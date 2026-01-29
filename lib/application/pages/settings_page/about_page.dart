import 'package:finance_tracker/utils/models/theme.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 10,
                right: 20,
                left: 10,
                bottom: 20,
              ),
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black87,
                    ),
                  ),
                  const Expanded(
                    child: Text("About", style: AppTheme.lightHeadingText),
                  ),
                  const SizedBox(
                    height: 35,
                    width: 35,
                    child: CircleAvatar(
                      radius: 17.5,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      // App Icon
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Icon(
                          Icons.account_balance_wallet,
                          size: 60,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // App Name
                      Text(
                        "Finance Tracker",
                        style: AppTheme.lightHeadingText.copyWith(fontSize: 24),
                      ),
                      const SizedBox(height: 8),
                      // Version
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Version 1.0.0",
                          style: AppTheme.lightBodyText.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Description
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSectionTitle("What is Finance Tracker?"),
                            _buildParagraph(
                              "Finance Tracker is a simple and intuitive personal finance management app designed to help you take control of your money. Track your income, monitor expenses, and gain valuable insights into your spending habits.",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Features Section
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSectionTitle("Key Features"),
                            const SizedBox(height: 10),
                            _buildFeatureItem(
                              context,
                              Icons.dashboard_outlined,
                              "Dashboard",
                              "Get a quick overview of your total income and expenses",
                            ),
                            _buildFeatureItem(
                              context,
                              Icons.swap_horiz,
                              "Transaction Management",
                              "Add, edit, and delete income and expense records",
                            ),
                            _buildFeatureItem(
                              context,
                              Icons.category_outlined,
                              "Categories",
                              "Organize your transactions with predefined categories",
                            ),
                            _buildFeatureItem(
                              context,
                              Icons.bar_chart,
                              "Analytics",
                              "Visualize your finances with daily, monthly, and yearly charts",
                            ),
                            _buildFeatureItem(
                              context,
                              Icons.security_outlined,
                              "Privacy First",
                              "All data stored locally on your device",
                            ),
                            _buildFeatureItem(
                              context,
                              Icons.wifi_off,
                              "Works Offline",
                              "No internet connection required",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Categories Section
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSectionTitle("Available Categories"),
                            const SizedBox(height: 10),
                            Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: [
                                _buildCategoryChip(context, "🍔 Food"),
                                _buildCategoryChip(context, "🚗 Transport"),
                                _buildCategoryChip(context, "🛒 Groceries"),
                                _buildCategoryChip(context, "💊 Medicine"),
                                _buildCategoryChip(context, "🏠 Rent"),
                                _buildCategoryChip(context, "🎁 Gifts"),
                                _buildCategoryChip(context, "🎬 Entertainment"),
                                _buildCategoryChip(context, "💼 Salary"),
                                _buildCategoryChip(context, "➕ Others"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // How to Use Section
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSectionTitle("How to Use"),
                            const SizedBox(height: 10),
                            _buildStep(
                              "1",
                              "Add your income and expenses from the Transaction tab",
                            ),
                            _buildStep(
                              "2",
                              "Select a category and enter the amount with details",
                            ),
                            _buildStep(
                              "3",
                              "View your financial summary on the Home dashboard",
                            ),
                            _buildStep(
                              "4",
                              "Analyze trends using the Analysis tab charts",
                            ),
                            _buildStep(
                              "5",
                              "Browse transactions by category in the Category tab",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Developer Info
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSectionTitle("Developer"),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Theme.of(
                                    context,
                                  ).colorScheme.primary,
                                  child: const Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Kawser Miah",
                                        style: AppTheme.lightBodyText.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        "Flutter Developer",
                                        style: AppTheme.lightBodyText.copyWith(
                                          fontSize: 13,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Tech Stack
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSectionTitle("Built With"),
                            const SizedBox(height: 10),
                            Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: [
                                _buildTechChip(context, "Flutter"),
                                _buildTechChip(context, "Dart"),
                                _buildTechChip(context, "BLoC"),
                                _buildTechChip(context, "Floor (SQLite)"),
                                _buildTechChip(context, "Clean Architecture"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Footer
                      Text(
                        "Made with ❤️ in Bangladesh",
                        style: AppTheme.lightBodyText.copyWith(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "© 2026 Finance Tracker",
                        style: AppTheme.lightBodyText.copyWith(
                          fontSize: 12,
                          color: Colors.black38,
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: AppTheme.lightHeadingText.copyWith(fontSize: 18),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Text(
      text,
      style: AppTheme.lightBodyText.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    );
  }

  Widget _buildFeatureItem(
    BuildContext context,
    IconData icon,
    String title,
    String description,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              size: 22,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTheme.lightBodyText.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  description,
                  style: AppTheme.lightBodyText.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(BuildContext context, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
        ),
      ),
      child: Text(label, style: AppTheme.lightBodyText.copyWith(fontSize: 13)),
    );
  }

  Widget _buildStep(String number, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: AppTheme.lightPrimaryColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: AppTheme.lightBodyText.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTechChip(BuildContext context, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: AppTheme.lightBodyText.copyWith(
          fontSize: 13,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
