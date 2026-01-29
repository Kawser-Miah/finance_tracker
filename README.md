# Finance Tracker

A beautiful and intuitive personal finance management application built with Flutter. Track your income, expenses, and gain insights into your spending habits with visual analytics.

![Flutter](https://img.shields.io/badge/Flutter-3.10+-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.0+-0175C2?logo=dart)
![License](https://img.shields.io/badge/License-Private-red)

## � App Screenshots

<p align="center">
  <img src="assets/App%20Screenshot/Home%20Page.png" width="200" alt="Home Page"/>
  <img src="assets/App%20Screenshot/Analysis%20Page.png" width="200" alt="Analysis Page"/>
  <img src="assets/App%20Screenshot/Transection%20Page.png" width="200" alt="Transaction Page"/>
  <img src="assets/App%20Screenshot/Category%20Page.png" width="200" alt="Category Page"/>
  <img src="assets/App%20Screenshot/About%20Page.png" width="200" alt="About Page"/>
</p>
## 📥 Download & Install

You can download the APK and install the app directly on your Android device:

[![Download APK](https://img.shields.io/badge/Download-APK-green?style=for-the-badge&logo=android)](https://github.com/Kawser-Miah/finance_tracker/tree/main/Andriod%20APK)

**Installation Steps:**
1. Download the APK file from the link above
2. Enable "Install from Unknown Sources" in your device settings
3. Open the downloaded APK file
4. Tap "Install" and wait for the installation to complete
5. Open Finance Tracker and start managing your finances!
## �📱 Features

### ✅ Available Features

#### 🏠 Home Dashboard
- View your total income and expenses at a glance
- See your savings from last month
- Track savings on goals with visual progress indicators
- Get personalized greetings based on time of day
- View recent transactions quickly

#### 💰 Transaction Management
- **Add Transactions**: Record both income and expenses
- **Edit Transactions**: Update existing transaction details
- **Delete Transactions**: Remove unwanted entries with swipe gestures
- **View Transactions**: Filter by daily, weekly, or monthly periods
- **Transaction Details**: Tap on any transaction to see full details

#### 📊 Categories
Pre-defined expense categories for easy organization:
- 🍔 Food
- 🚗 Transport
- 🛒 Groceries
- 💊 Medicine
- 🏠 Rent
- 🎁 Gifts
- 🎬 Entertainment
- 💼 Salary (Income)
- ➕ Add/Others (Custom entries)

#### 📈 Analytics & Analysis
- **Daily Analysis**: View income vs expense charts for each day
- **Monthly Analysis**: Track your monthly financial trends
- **Yearly Analysis**: Get a bird's eye view of your annual finances
- Interactive bar charts with smooth animations
- Income and expense comparison summaries

#### 📂 Category Details
- View all transactions for a specific category
- Transactions grouped by month for easy navigation
- Quick access to edit or delete entries

#### ⚙️ Settings
- View app information
- Access Privacy Policy
- Read Terms of Service
- App version information

### 🚧 Coming Soon Features

The following features are planned for future releases:

| Feature | Description | Status |
|---------|-------------|--------|
| 🔔 Notifications | Set reminders for bills and recurring expenses | Coming Soon |
| 💱 Currency Selection | Support for multiple currencies | Coming Soon |
| 💾 Backup Data | Export your financial data for safekeeping | Coming Soon |
| 📥 Restore Data | Import previously backed up data | Coming Soon |
| 🗑️ Clear All Data | Delete all transactions and start fresh | Coming Soon |

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (^3.10.0 or higher)
- Dart SDK (^3.0.0 or higher)
- Android Studio / VS Code with Flutter extensions
- An Android or iOS device/emulator

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/finance_tracker.git
   cd finance_tracker
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate required files**
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

### Building for Production

#### Android
```bash
flutter build apk --release
```

#### iOS
```bash
flutter build ios --release
```

## 📖 How to Use

### Adding a Transaction

1. Navigate to the **Transaction** tab
2. Tap the ➕ floating action button
3. Select **Income** or **Expense**
4. Fill in the details:
   - Select a category
   - Enter the amount
   - Add a title
   - Add a description (optional)
   - Select the date
5. Tap **Add** to save

### Viewing Transactions

1. Go to the **Transaction** tab
2. Use the toggle at the top to switch between:
   - All Transactions
   - Incomes only
   - Expenses only
3. Filter by time period:
   - Daily
   - Weekly
   - Monthly

### Editing or Deleting Transactions

1. Find the transaction in the list
2. **To Edit**: Swipe left and tap "Update"
3. **To Delete**: Swipe right and tap "Delete"

### Viewing Analytics

1. Navigate to the **Analysis** tab
2. Switch between Daily, Monthly, and Yearly views
3. View the bar charts comparing income and expenses
4. Check the summary below the chart for totals

### Exploring Categories

1. Go to the **Category** tab
2. Tap on any category to view all related transactions
3. Transactions are grouped by month for easy browsing

## 🔒 Privacy & Data

- **Local Storage**: All your data is stored locally on your device
- **No Cloud Sync**: Your financial data never leaves your device
- **No Account Required**: Use the app without creating an account
- **Full Control**: You own your data and can delete it anytime

## 📞 Support

If you encounter any issues or have questions:
- Check the Privacy Policy in Settings
- Review the Terms of Service
- Contact us through the app's feedback feature (coming soon)

## 📄 License

This project is private and not open for public distribution.

---

**Version**: 1.0.0  
**Last Updated**: January 2026
