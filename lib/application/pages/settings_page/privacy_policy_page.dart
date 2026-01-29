import 'package:finance_tracker/utils/models/theme.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

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
                    child: Text(
                      "Privacy Policy",
                      style: AppTheme.lightHeadingText,
                    ),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      _buildSectionTitle("Last Updated"),
                      _buildParagraph("January 29, 2026"),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Introduction"),
                      _buildParagraph(
                        "Welcome to Finance Tracker. We are committed to protecting your personal information and your right to privacy. This Privacy Policy explains how we collect, use, and safeguard your information when you use our mobile application.",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Information We Collect"),
                      _buildParagraph(
                        "Finance Tracker is designed with privacy in mind. All your financial data is stored locally on your device. We do not collect, transmit, or store any of your personal financial information on external servers.",
                      ),
                      _buildBulletPoint("Transaction records"),
                      _buildBulletPoint("Category information"),
                      _buildBulletPoint("Income and expense data"),
                      _buildBulletPoint("Custom settings and preferences"),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Data Storage"),
                      _buildParagraph(
                        "All data entered into Finance Tracker is stored locally on your device using secure local storage. We do not have access to your financial data, and it is never uploaded to any cloud service unless you explicitly choose to backup your data.",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Data Security"),
                      _buildParagraph(
                        "We implement appropriate technical measures to protect your personal information stored on your device. However, please be aware that no method of electronic storage is 100% secure, and we cannot guarantee absolute security.",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Third-Party Services"),
                      _buildParagraph(
                        "Finance Tracker does not share your data with any third-party services. The app works entirely offline and does not require an internet connection to function.",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Your Rights"),
                      _buildParagraph(
                        "Since all data is stored locally on your device, you have complete control over your information. You can:",
                      ),
                      _buildBulletPoint("View all your data within the app"),
                      _buildBulletPoint("Delete all data at any time"),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Children's Privacy"),
                      _buildParagraph(
                        "Finance Tracker is not intended for use by children under the age of 13. We do not knowingly collect personal information from children under 13.",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Changes to This Policy"),
                      _buildParagraph(
                        "We may update this Privacy Policy from time to time. We will notify you of any changes by updating the \"Last Updated\" date at the top of this policy.",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Contact Us"),
                      _buildParagraph(
                        "If you have any questions about this Privacy Policy, please contact us through the app's feedback feature.",
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
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: AppTheme.lightHeadingText.copyWith(fontSize: 18),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: AppTheme.lightBodyText.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.5,
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(fontSize: 14)),
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
}
