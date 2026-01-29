# Finance Tracker - System Documentation

This document provides technical documentation for developers working on the Finance Tracker application.

## Table of Contents

1. [Architecture Overview](#architecture-overview)
2. [Project Structure](#project-structure)
3. [Technology Stack](#technology-stack)
4. [Core Components](#core-components)
5. [Data Layer](#data-layer)
6. [Domain Layer](#domain-layer)
7. [Presentation Layer](#presentation-layer)
8. [State Management](#state-management)
9. [Dependency Injection](#dependency-injection)
10. [Routing](#routing)
11. [Database Schema](#database-schema)
12. [Coming Soon Features](#coming-soon-features)
13. [Development Guidelines](#development-guidelines)

---

## Architecture Overview

Finance Tracker follows **Clean Architecture** principles with a clear separation of concerns:

```
┌─────────────────────────────────────────────────────────────┐
│                    Presentation Layer                        │
│              (Pages, Widgets, BLoC)                          │
├─────────────────────────────────────────────────────────────┤
│                      Domain Layer                            │
│           (Use Cases, Repositories, Models)                  │
├─────────────────────────────────────────────────────────────┤
│                       Data Layer                             │
│    (Repository Impl, Data Sources, Database)                 │
└─────────────────────────────────────────────────────────────┘
```

### Design Patterns Used
- **BLoC Pattern**: For state management
- **Repository Pattern**: For data abstraction
- **Dependency Injection**: Using GetIt and Injectable
- **Clean Architecture**: Separation of concerns

---

## Project Structure

```
lib/
├── main.dart                     # Application entry point
├── application/                  # Presentation layer
│   ├── core/                     # Shared application components
│   │   ├── category_enum.dart    # Category enumerations
│   │   ├── services/             # Application services
│   │   │   └── routing/          # Navigation configuration
│   │   │       ├── app_router.dart
│   │   │       ├── route_utils.dart
│   │   │       └── not_found_screen.dart
│   │   └── widgets/              # Reusable widgets
│   │       ├── category_details_container.dart
│   │       ├── empty_placeholder_screen.dart
│   │       ├── exception_container.dart
│   │       ├── income_expense_box.dart
│   │       ├── income_expense_chart_card_widget.dart
│   │       ├── income_expense_summary_row_widget.dart
│   │       └── transaction_container.dart
│   └── pages/                    # Feature pages
│       ├── analysis_page/        # Analytics feature
│       │   ├── analysis_page.dart
│       │   └── bloc/
│       ├── bottom_nav/           # Bottom navigation
│       │   ├── bottom_nav_page.dart
│       │   └── bloc/
│       ├── category_page/        # Category listing
│       │   ├── category_page.dart
│       │   └── bloc/
│       ├── category_details_page/# Category details
│       │   ├── category_details_page.dart
│       │   └── bloc/
│       ├── data_insert_page/     # Add/Edit transactions
│       │   ├── data_insert_page.dart
│       │   ├── all_field.dart
│       │   └── bloc/
│       ├── home_page/            # Home dashboard
│       │   ├── home_page.dart
│       │   ├── tabs.dart
│       │   └── bloc/
│       ├── settings_page/        # Settings feature
│       │   ├── settings_page.dart
│       │   ├── privacy_policy_page.dart
│       │   └── terms_of_service_page.dart
│       └── transaction_page/     # Transaction listing
│           ├── transaction_page.dart
│           └── bloc/
├── data/                         # Data layer
│   ├── datasources/              # Data sources
│   │   └── db/                   # Database
│   │       ├── finance_tracker_db.dart
│   │       ├── finance_tracker_db.g.dart  # Generated
│   │       └── dao/              # Data Access Objects
│   │           ├── income_dao.dart
│   │           ├── expense_dao.dart
│   │           └── analysis_dao.dart
│   ├── exceptions/               # Custom exceptions
│   │   └── exception.dart
│   └── repositories/             # Repository implementations
│       ├── analysis_repository_iml.dart
│       ├── category_details_repository_iml.dart
│       ├── category_repository_iml.dart
│       ├── home_page_repository_iml.dart
│       ├── insert_transaction_repository_iml.dart
│       └── transaction_repository_iml.dart
├── di/                           # Dependency injection
│   ├── di.dart                   # DI configuration
│   ├── di.config.dart            # Generated DI config
│   └── register_module.dart      # Module registration
├── domain/                       # Domain layer
│   ├── failures/                 # Failure classes
│   │   └── failures.dart
│   ├── models/                   # Domain models
│   │   ├── entity_model/         # Database entities
│   │   │   ├── expense_entity_model.dart
│   │   │   ├── income_entity_model.dart
│   │   │   └── time_series_total_model.dart
│   │   ├── income_expense_category.dart
│   │   ├── total_balance.dart
│   │   ├── transaction_by_month_model.dart
│   │   └── transaction_model.dart
│   ├── repositories/             # Repository interfaces
│   │   ├── analysis_repository.dart
│   │   ├── category_details_repository.dart
│   │   ├── category_repository.dart
│   │   ├── home_page_repository.dart
│   │   ├── insert_transaction_repository.dart
│   │   └── transaction_repository.dart
│   └── usecases/                 # Use cases
│       ├── analysis_usecase.dart
│       ├── category_details_usecase.dart
│       ├── category_usecase.dart
│       ├── home_page_usecase.dart
│       ├── insert_transaction_usecase.dart
│       └── transaction_usecase.dart
├── generated/                    # Generated files
│   └── assets.dart               # Asset constants
└── utils/                        # Utilities
    ├── strings.dart              # String constants
    ├── utils.dart                # Utility functions
    └── models/
        └── theme.dart            # App theme configuration
```

---

## Technology Stack

### Core Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| flutter_bloc | ^9.1.1 | State management |
| go_router | ^17.0.1 | Navigation |
| floor | ^1.5.0 | SQLite database abstraction |
| get_it | ^9.2.0 | Service locator |
| injectable | ^2.7.1+4 | Dependency injection |
| dartz | ^0.10.1 | Functional programming (Either) |
| freezed_annotation | ^2.4.4 | Immutable classes |
| fl_chart | ^1.1.1 | Charts and graphs |
| flutter_svg | ^2.2.3 | SVG rendering |
| percent_indicator | ^4.2.5 | Progress indicators |
| flutter_slidable | ^4.0.3 | Swipe actions |
| intl | ^0.20.2 | Internationalization/Date formatting |
| provider | ^6.1.5+1 | State management |
| flutter_local_notifications | ^19.5.0 | Local notifications |
| path_provider | ^2.1.5 | File system paths |

### Dev Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| build_runner | ^2.4.0 | Code generation |
| injectable_generator | ^2.6.2 | DI code generation |
| floor_generator | ^1.5.0 | Database code generation |
| freezed | ^2.4.0 | Immutable class generation |
| flutter_lints | ^6.0.0 | Linting rules |

---

## Core Components

### App Entry Point (`main.dart`)

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();  // Initialize DI
  runApp(const MyApp());
}
```

### Theme Configuration (`utils/models/theme.dart`)

The app uses a custom light theme with purple accent colors:

| Color | Hex | Usage |
|-------|-----|-------|
| Primary | `Colors.deepPurpleAccent.shade100` | Main accent color |
| OnPrimary | `#E9DCF3` | Background on primary |
| PrimaryContainer | `#CFC2F5` | Container backgrounds |
| TextColorPrimary | `Colors.black` | Primary text |

---

## Data Layer

### Database (`finance_tracker_db.dart`)

Uses Floor (SQLite abstraction) with the following structure:

```dart
@Database(
  version: 1,
  entities: [IncomeEntityModel, ExpenseEntityModel, BestExpense],
  views: [TimeSeriesTotal],
)
abstract class FinanceTrackerDB extends FloorDatabase {
  IncomeDao get incomeDao;
  ExpenseDao get expenseDao;
  AnalysisDao get analysisDao;
}
```

### Data Access Objects (DAOs)

#### IncomeDao
- `insertIncome()` - Add new income
- `updateIncome()` - Update existing income
- `deleteIncome()` - Remove income by ID
- `getIncomeDataByCurrentDate()` - Today's income
- `getIncomeDataByCurrentWeek()` - This week's income
- `getIncomeDataByCurrentMonth()` - This month's income
- `getTotalIncomeByCurrentMonth()` - Monthly income total
- `getTotalIncomeByPreviousMonth()` - Last month's income total
- `getAllIncome()` - All income records
- `getIncomeByCategory()` - Filter by category
- `getMonthYear()` - Get distinct months

#### ExpenseDao
- `insertExpense()` - Add new expense
- `updateExpense()` - Update existing expense
- `deleteExpense()` - Remove expense by ID
- `getExpenseDataByCurrentDate()` - Today's expenses
- `getExpenseDataByCurrentWeek()` - This week's expenses
- `getExpenseDataByCurrentMonth()` - This month's expenses
- `getTotalExpenseByCurrentMonth()` - Monthly expense total
- `getTotalExpenseByPreviousMonth()` - Last month's expense total
- `getAllExpense()` - All expense records
- `getExpenseByCategory()` - Filter by category
- `getCategoryWithHighestExpenseByLastWeek()` - Top spending category

#### AnalysisDao
- `getTimeSeriesDataDaily()` - Daily aggregated data
- `getTimeSeriesDataMonthly()` - Monthly aggregated data
- `getTimeSeriesDataYearly()` - Yearly aggregated data

### Repository Pattern

Abstract repositories are defined in the domain layer and implemented in the data layer:

```
domain/repositories/           →  data/repositories/
  transaction_repository.dart  →  transaction_repository_iml.dart
  category_repository.dart     →  category_repository_iml.dart
  ...
```

---

## Domain Layer

### Models

#### TransactionModel
```dart
class TransactionModel {
  int? id;
  String? title;
  String? category;
  String? type;        // 'Income' or 'Expense'
  double? amount;
  String? description;
  String? date;
}
```

#### TotalBalance
```dart
class TotalBalance {
  double? totalIncome;
  double? totalExpense;
  double? savingsLastMonth;
}
```

#### TimeSeriesTotal (Database View)
```dart
class TimeSeriesTotal {
  String label;      // Date/Month/Year label
  double income;     // Total income
  double expense;    // Total expense
}
```

### Use Cases

| Use Case | Purpose |
|----------|---------|
| `HomePageUseCase` | Fetch total balance and savings |
| `TransactionUseCase` | Get transactions by time period |
| `CategoryUseCase` | Get all categories |
| `CategoryDetailsUseCase` | Get transactions for a category |
| `InsertTransactionUseCase` | Add/Update/Delete transactions |
| `AnalysisUseCase` | Get time series data for charts |

---

## Presentation Layer

### Pages Overview

| Page | Description | BLoC |
|------|-------------|------|
| HomePage | Dashboard with summary | HomePageBloc |
| TransactionPage | List all transactions | TransactionBloc |
| AnalysisPage | Charts and analytics | AnalysisBloc |
| CategoryPage | Category grid | CategoryBloc |
| CategoryDetailsPage | Category transactions | CategoryDetailsBloc |
| DataInsertPage | Add/Edit form | IncomeExpenseAddBloc |
| SettingsPage | App settings | None |
| PrivacyPolicyPage | Privacy policy | None |
| TermsOfServicePage | Terms of service | None |

### Bottom Navigation

The app uses 5 navigation tabs:
1. **Home** (index 0) - Dashboard
2. **Analysis** (index 1) - Charts
3. **Transaction** (index 2) - Transaction list
4. **Category** (index 3) - Categories
5. **Settings** (index 4) - Settings

---

## State Management

### BLoC Pattern

Each feature uses the BLoC pattern with:
- **Events**: User actions or triggers
- **States**: UI states (Loading, Loaded, Error)
- **BLoC**: Business logic component

Example structure:
```
bloc/
├── feature_bloc.dart      # BLoC class
├── feature_event.dart     # Event definitions
└── feature_state.dart     # State definitions
```

### Common State Pattern

```dart
// Using Freezed for state management
@freezed
class FeatureState with _$FeatureState {
  const factory FeatureState.initial() = Initial;
  const factory FeatureState.loading() = Loading;
  const factory FeatureState.loaded(Data data) = Loaded;
  const factory FeatureState.error(String message) = Error;
}
```

---

## Dependency Injection

### Configuration

Uses GetIt with Injectable for automatic registration:

```dart
// di/di.dart
final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => getIt.init();
```

### Registration Types

| Annotation | Scope |
|------------|-------|
| `@injectable` | New instance each time |
| `@singleton` | Single instance, created immediately |
| `@lazySingleton` | Single instance, created on first use |

### Module Registration (`register_module.dart`)

Database initialization is handled in a separate module:
```dart
@module
abstract class RegisterModule {
  @preResolve
  Future<FinanceTrackerDB> get database => 
    $FloorFinanceTrackerDB.databaseBuilder('finance_db.db').build();
}
```

---

## Routing

### GoRouter Configuration

Routes are defined in `app_router.dart`:

| Route | Path | Description |
|-------|------|-------------|
| bottom | `/` | Main navigation shell |
| categoryDetails | `/categoryDetailsPage` | Category detail view |
| insert | `/insertPage` | Add/Edit transaction |
| privacyPolicy | `/privacyPolicy` | Privacy policy |
| termsOfService | `/termsOfService` | Terms of service |

### Route Parameters

```dart
// CategoryDetails - expects category name as extra
GoRoute(
  path: PAGES.categoryDetails.screenPath,
  builder: (context, state) {
    String category = state.extra as String;
    return CategoryDetailsPage(category: category);
  }
)

// Insert - expects [todo, transaction, path] as extra
GoRoute(
  path: PAGES.insert.screenPath,
  builder: (context, state) {
    final List<dynamic> extras = state.extra as List<dynamic>;
    String todo = extras[0] as String;
    TransactionModel transaction = extras[1] as TransactionModel;
    String path = extras[2] as String;
    return DataInsertPage(todo: todo, transaction: transaction, path: path);
  }
)
```

---

## Database Schema

### Tables

#### incomes
| Column | Type | Description |
|--------|------|-------------|
| id | INTEGER | Primary key, auto-increment |
| category | TEXT | Category name |
| type | TEXT | Always 'Income' |
| incomeTitle | TEXT | Transaction title |
| income | REAL | Amount |
| description | TEXT | Optional description |
| date | TEXT | ISO date string |

#### expenses
| Column | Type | Description |
|--------|------|-------------|
| id | INTEGER | Primary key, auto-increment |
| category | TEXT | Category name |
| type | TEXT | Always 'Expense' |
| expenseTitle | TEXT | Transaction title |
| expense | REAL | Amount |
| description | TEXT | Optional description |
| date | TEXT | ISO date string |

### Database Views

#### TimeSeriesTotal
Aggregates income and expense by time period for analytics.

---

## Coming Soon Features

The following features are marked as "Coming Soon" in the settings page and require implementation:

### 1. Notifications
**Location**: Settings → General → Notifications
**Implementation Required**:
- Add notification scheduling using `flutter_local_notifications`
- Create notification preferences storage
- Implement reminder logic for recurring transactions

### 2. Currency Selection
**Location**: Settings → General → Currency
**Implementation Required**:
- Create currency model and database storage
- Add currency conversion logic
- Update all amount displays with currency formatting
- Create currency selection UI

### 3. Backup Data
**Location**: Settings → Data → Backup Data
**Implementation Required**:
- Export database to JSON/CSV
- Use `path_provider` to save to downloads
- Add share functionality

### 4. Restore Data
**Location**: Settings → Data → Restore Data
**Implementation Required**:
- File picker integration
- JSON/CSV parsing
- Database import with conflict resolution
- Data validation

### 5. Clear All Data
**Location**: Settings → Data → Clear All Data
**Implementation Required**:
- Delete all records from income and expense tables
- Reset any cached data
- Confirmation flow is already implemented

---

## Development Guidelines

### Code Generation

Run after modifying models, blocs, or database:
```bash
dart run build_runner build --delete-conflicting-outputs
```

### File Naming Conventions

- **Pages**: `feature_page.dart`
- **BLoCs**: `feature_bloc.dart`, `feature_event.dart`, `feature_state.dart`
- **Models**: `feature_model.dart`
- **Repositories**: Interface - `feature_repository.dart`, Implementation - `feature_repository_iml.dart`

### Adding a New Feature

1. Create model in `domain/models/`
2. Create repository interface in `domain/repositories/`
3. Create use case in `domain/usecases/`
4. Implement repository in `data/repositories/`
5. Create BLoC in `application/pages/feature/bloc/`
6. Create page in `application/pages/feature/`
7. Add route in `app_router.dart` and `route_utils.dart`
8. Register dependencies (auto with Injectable annotations)
9. Run code generation

### Best Practices

- Use `Either<Failure, Success>` from dartz for error handling
- Keep BLoCs thin - put business logic in use cases
- Use Freezed for immutable models and states
- Follow the existing theme using `AppTheme` constants
- Use SVG assets for icons where possible

---

## Version History

| Version | Date | Changes |
|---------|------|---------|
| 1.0.0 | January 2026 | Initial release with core features |

---

**Document Version**: 1.0.0  
**Last Updated**: January 29, 2026
