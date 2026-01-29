import 'package:finance_tracker/utils/models/theme.dart';
import 'package:flutter/material.dart';

class TermsOfServicePage extends StatelessWidget {
  const TermsOfServicePage({super.key});

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
                      "Terms of Service",
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
                      _buildSectionTitle("Acceptance of Terms"),
                      _buildParagraph(
                        "By downloading, installing, or using Finance Tracker, you agree to be bound by these Terms of Service. If you do not agree to these terms, please do not use the application.",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Description of Service"),
                      _buildParagraph(
                        "Finance Tracker is a personal finance management application that helps you track your income, expenses, and manage your budget. The app stores all data locally on your device.",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("User Responsibilities"),
                      _buildParagraph(
                        "As a user of Finance Tracker, you agree to:",
                      ),
                      _buildBulletPoint("Use the app for lawful purposes only"),
                      _buildBulletPoint(
                        "Provide accurate financial information for your own records",
                      ),
                      _buildBulletPoint("Maintain the security of your device"),
                      _buildBulletPoint(
                        "Take responsibility for backing up your data",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Intellectual Property"),
                      _buildParagraph(
                        "All content, features, and functionality of Finance Tracker, including but not limited to design, graphics, and code, are owned by the app developers and are protected by copyright and other intellectual property laws.",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Disclaimer of Warranties"),
                      _buildParagraph(
                        "Finance Tracker is provided \"as is\" without any warranties of any kind. We do not guarantee that the app will be error-free, uninterrupted, or free of viruses or other harmful components.",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Limitation of Liability"),
                      _buildParagraph(
                        "To the maximum extent permitted by law, we shall not be liable for any indirect, incidental, special, consequential, or punitive damages arising from your use of Finance Tracker, including but not limited to:",
                      ),
                      _buildBulletPoint("Loss of data"),
                      _buildBulletPoint(
                        "Financial decisions made based on app data",
                      ),
                      _buildBulletPoint(
                        "Device malfunction or data corruption",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Financial Advice Disclaimer"),
                      _buildParagraph(
                        "Finance Tracker is a tool for personal finance tracking only. It does not provide financial, investment, tax, or legal advice. Always consult with qualified professionals for financial decisions.",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Data and Privacy"),
                      _buildParagraph(
                        "Your use of Finance Tracker is also governed by our Privacy Policy. By using the app, you consent to the collection and use of information as described in the Privacy Policy.",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Updates and Modifications"),
                      _buildParagraph(
                        "We reserve the right to modify, update, or discontinue Finance Tracker at any time without prior notice. We may also update these Terms of Service, and your continued use of the app constitutes acceptance of any changes.",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Termination"),
                      _buildParagraph(
                        "You may stop using Finance Tracker at any time by uninstalling the app from your device. Upon uninstallation, all locally stored data will be removed.",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Governing Law"),
                      _buildParagraph(
                        "These Terms of Service shall be governed by and construed in accordance with applicable local laws, without regard to conflict of law principles.",
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Contact Information"),
                      _buildParagraph(
                        "If you have any questions about these Terms of Service, please contact us through the app's feedback feature.",
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
