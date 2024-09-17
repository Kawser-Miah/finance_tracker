// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_tracker_db.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $FinanceTrackerDBBuilderContract {
  /// Adds migrations to the builder.
  $FinanceTrackerDBBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $FinanceTrackerDBBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<FinanceTrackerDB> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorFinanceTrackerDB {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $FinanceTrackerDBBuilderContract databaseBuilder(String name) =>
      _$FinanceTrackerDBBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $FinanceTrackerDBBuilderContract inMemoryDatabaseBuilder() =>
      _$FinanceTrackerDBBuilder(null);
}

class _$FinanceTrackerDBBuilder implements $FinanceTrackerDBBuilderContract {
  _$FinanceTrackerDBBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $FinanceTrackerDBBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $FinanceTrackerDBBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<FinanceTrackerDB> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$FinanceTrackerDB();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$FinanceTrackerDB extends FinanceTrackerDB {
  _$FinanceTrackerDB([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  IncomeDao? _incomeDaoInstance;

  ExpenseDao? _expenseDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `incomes` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `category` TEXT, `type` TEXT, `incomeTitle` TEXT, `income` REAL, `description` TEXT, `date` TEXT)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `expenses` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `category` TEXT, `type` TEXT, `expenseTitle` TEXT, `expense` REAL, `description` TEXT, `date` TEXT)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `expenses` (`category` TEXT NOT NULL, `total_expense` REAL NOT NULL, PRIMARY KEY (`category`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SingleAnalysis` (`time` TEXT NOT NULL, `total_amount` REAL NOT NULL, PRIMARY KEY (`time`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  IncomeDao get incomeDao {
    return _incomeDaoInstance ??= _$IncomeDao(database, changeListener);
  }

  @override
  ExpenseDao get expenseDao {
    return _expenseDaoInstance ??= _$ExpenseDao(database, changeListener);
  }
}

class _$IncomeDao extends IncomeDao {
  _$IncomeDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _incomeEntityModelInsertionAdapter = InsertionAdapter(
            database,
            'incomes',
            (IncomeEntityModel item) => <String, Object?>{
                  'id': item.id,
                  'category': item.category,
                  'type': item.type,
                  'incomeTitle': item.incomeTitle,
                  'income': item.income,
                  'description': item.description,
                  'date': item.date
                }),
        _incomeEntityModelUpdateAdapter = UpdateAdapter(
            database,
            'incomes',
            ['id'],
            (IncomeEntityModel item) => <String, Object?>{
                  'id': item.id,
                  'category': item.category,
                  'type': item.type,
                  'incomeTitle': item.incomeTitle,
                  'income': item.income,
                  'description': item.description,
                  'date': item.date
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<IncomeEntityModel> _incomeEntityModelInsertionAdapter;

  final UpdateAdapter<IncomeEntityModel> _incomeEntityModelUpdateAdapter;

  @override
  Future<List<IncomeEntityModel>> getIncomeDataByCurrentDate() async {
    return _queryAdapter.queryList(
        'SELECT * FROM incomes WHERE DATE(date) = DATE(\'now\',\'localtime\') ORDER BY date DESC',
        mapper: (Map<String, Object?> row) => IncomeEntityModel(
            id: row['id'] as int?,
            incomeTitle: row['incomeTitle'] as String?,
            category: row['category'] as String?,
            type: row['type'] as String?,
            income: row['income'] as double?,
            description: row['description'] as String?,
            date: row['date'] as String?));
  }

  @override
  Future<List<IncomeEntityModel>> getIncomeDataByPreviousDate() async {
    return _queryAdapter.queryList(
        'SELECT * FROM incomes WHERE DATE(date) = DATE(\'now\',\'-1 day\',\'localtime\') ORDER BY date DESC',
        mapper: (Map<String, Object?> row) => IncomeEntityModel(
            id: row['id'] as int?,
            incomeTitle: row['incomeTitle'] as String?,
            category: row['category'] as String?,
            type: row['type'] as String?,
            income: row['income'] as double?,
            description: row['description'] as String?,
            date: row['date'] as String?));
  }

  @override
  Future<List<IncomeEntityModel>> getIncomeDataByCurrentWeek() async {
    return _queryAdapter.queryList(
        'SELECT * FROM incomes WHERE DATE(date) BETWEEN DATE(\'now\', \'weekday 0\', \'-7 days\',\'localtime\') AND DATE(\'now\', \'weekday 0\',\'localtime\') ORDER BY date DESC;',
        mapper: (Map<String, Object?> row) => IncomeEntityModel(
            id: row['id'] as int?,
            incomeTitle: row['incomeTitle'] as String?,
            category: row['category'] as String?,
            type: row['type'] as String?,
            income: row['income'] as double?,
            description: row['description'] as String?,
            date: row['date'] as String?));
  }

  @override
  Future<List<IncomeEntityModel>> getIncomeDataByCurrentMonth() async {
    return _queryAdapter.queryList(
        'SELECT * FROM incomes WHERE strftime(\'%Y-%m\', date) = strftime(\'%Y-%m\', \'now\',\'localtime\') ORDER BY date DESC;',
        mapper: (Map<String, Object?> row) => IncomeEntityModel(
            id: row['id'] as int?,
            incomeTitle: row['incomeTitle'] as String?,
            category: row['category'] as String?,
            type: row['type'] as String?,
            income: row['income'] as double?,
            description: row['description'] as String?,
            date: row['date'] as String?));
  }

  @override
  Future<double?> getTotalIncomeByCurrentMonth() async {
    return _queryAdapter.query(
        'SELECT SUM(income) AS total_income FROM incomes WHERE strftime(\'%Y-%m\', date) = strftime(\'%Y-%m\', \'now\',\'localtime\')',
        mapper: (Map<String, Object?> row) => row.values.first as double);
  }

  @override
  Future<double?> getTotalIncomeByPreviousMonth() async {
    return _queryAdapter.query(
        'SELECT SUM(income) AS total_income FROM incomes WHERE strftime(\'%Y-%m\', date) = strftime(\'%Y-%m\', \'now\',\'-1 month\',\'localtime\')',
        mapper: (Map<String, Object?> row) => row.values.first as double);
  }

  @override
  Future<List<String>> getMonthYear(String category) async {
    return _queryAdapter.queryList(
        'SELECT DISTINCT strftime(\'%m-%Y\', date) AS month_year FROM incomes WHERE category =?1 ORDER BY date DESC',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        arguments: [category]);
  }

  @override
  Future<List<String>> getAllMonthYear() async {
    return _queryAdapter.queryList(
        'SELECT DISTINCT strftime(\'%m-%Y\', date) AS month_year FROM incomes ORDER BY date DESC',
        mapper: (Map<String, Object?> row) => row.values.first as String);
  }

  @override
  Future<List<IncomeEntityModel>> getAllIncome() async {
    return _queryAdapter.queryList('SELECT * FROM incomes ORDER BY date DESC',
        mapper: (Map<String, Object?> row) => IncomeEntityModel(
            id: row['id'] as int?,
            incomeTitle: row['incomeTitle'] as String?,
            category: row['category'] as String?,
            type: row['type'] as String?,
            income: row['income'] as double?,
            description: row['description'] as String?,
            date: row['date'] as String?));
  }

  @override
  Future<List<IncomeEntityModel>> getIncomeByCategory(String category) async {
    return _queryAdapter.queryList(
        'SELECT * FROM incomes WHERE category =?1 ORDER BY date DESC',
        mapper: (Map<String, Object?> row) => IncomeEntityModel(
            id: row['id'] as int?,
            incomeTitle: row['incomeTitle'] as String?,
            category: row['category'] as String?,
            type: row['type'] as String?,
            income: row['income'] as double?,
            description: row['description'] as String?,
            date: row['date'] as String?),
        arguments: [category]);
  }

  @override
  Future<void> deleteIncomes(int id) async {
    await _queryAdapter
        .queryNoReturn('DELETE FROM incomes WHERE id =?1', arguments: [id]);
  }

  @override
  Future<void> insertIncome(IncomeEntityModel income) async {
    await _incomeEntityModelInsertionAdapter.insert(
        income, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateIncome(IncomeEntityModel income) async {
    await _incomeEntityModelUpdateAdapter.update(
        income, OnConflictStrategy.abort);
  }
}

class _$ExpenseDao extends ExpenseDao {
  _$ExpenseDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _expenseEntityModelInsertionAdapter = InsertionAdapter(
            database,
            'expenses',
            (ExpenseEntityModel item) => <String, Object?>{
                  'id': item.id,
                  'category': item.category,
                  'type': item.type,
                  'expenseTitle': item.expenseTitle,
                  'expense': item.expense,
                  'description': item.description,
                  'date': item.date
                }),
        _expenseEntityModelUpdateAdapter = UpdateAdapter(
            database,
            'expenses',
            ['id'],
            (ExpenseEntityModel item) => <String, Object?>{
                  'id': item.id,
                  'category': item.category,
                  'type': item.type,
                  'expenseTitle': item.expenseTitle,
                  'expense': item.expense,
                  'description': item.description,
                  'date': item.date
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ExpenseEntityModel>
      _expenseEntityModelInsertionAdapter;

  final UpdateAdapter<ExpenseEntityModel> _expenseEntityModelUpdateAdapter;

  @override
  Future<List<ExpenseEntityModel>> getExpenseDataByCurrentDate() async {
    return _queryAdapter.queryList(
        'SELECT * FROM expenses WHERE DATE(date) = DATE(\'now\',\'localtime\') ORDER BY date DESC',
        mapper: (Map<String, Object?> row) => ExpenseEntityModel(
            id: row['id'] as int?,
            category: row['category'] as String?,
            type: row['type'] as String?,
            expenseTitle: row['expenseTitle'] as String?,
            expense: row['expense'] as double?,
            description: row['description'] as String?,
            date: row['date'] as String?));
  }

  @override
  Future<List<ExpenseEntityModel>> getExpenseDataByPreviousDate() async {
    return _queryAdapter.queryList(
        'SELECT * FROM expenses WHERE DATE(date) = DATE(\'now\', \'-1 day\',\'localtime\') ORDER BY date DESC',
        mapper: (Map<String, Object?> row) => ExpenseEntityModel(
            id: row['id'] as int?,
            category: row['category'] as String?,
            type: row['type'] as String?,
            expenseTitle: row['expenseTitle'] as String?,
            expense: row['expense'] as double?,
            description: row['description'] as String?,
            date: row['date'] as String?));
  }

  @override
  Future<List<ExpenseEntityModel>> getExpenseDataByCurrentWeek() async {
    return _queryAdapter.queryList(
        'SELECT * FROM expenses WHERE DATE(date) BETWEEN DATE(\'now\', \'weekday 0\', \'-7 days\',\'localtime\') AND DATE(\'now\', \'weekday 0\',\'localtime\') ORDER BY date DESC;',
        mapper: (Map<String, Object?> row) => ExpenseEntityModel(
            id: row['id'] as int?,
            category: row['category'] as String?,
            type: row['type'] as String?,
            expenseTitle: row['expenseTitle'] as String?,
            expense: row['expense'] as double?,
            description: row['description'] as String?,
            date: row['date'] as String?));
  }

  @override
  Future<List<ExpenseEntityModel>> getExpenseDataByCurrentMonth() async {
    return _queryAdapter.queryList(
        'SELECT * FROM expenses WHERE strftime(\'%Y-%m\', date) = strftime(\'%Y-%m\', \'now\',\'localtime\') ORDER BY date DESC;',
        mapper: (Map<String, Object?> row) => ExpenseEntityModel(
            id: row['id'] as int?,
            category: row['category'] as String?,
            type: row['type'] as String?,
            expenseTitle: row['expenseTitle'] as String?,
            expense: row['expense'] as double?,
            description: row['description'] as String?,
            date: row['date'] as String?));
  }

  @override
  Future<double?> getTotalExpenseByCurrentMonth() async {
    return _queryAdapter.query(
        'SELECT SUM(expense) AS total_expense FROM expenses WHERE strftime(\'%Y-%m\', date) = strftime(\'%Y-%m\', \'now\',\'localtime\')',
        mapper: (Map<String, Object?> row) => row.values.first as double);
  }

  @override
  Future<double?> getTotalExpenseByPreviousMonth() async {
    return _queryAdapter.query(
        'SELECT SUM(expense) AS total_expense FROM expenses WHERE strftime(\'%Y-%m\', date) = strftime(\'%Y-%m\', \'now\',\'-1 month\',\'localtime\')',
        mapper: (Map<String, Object?> row) => row.values.first as double);
  }

  @override
  Future<BestExpense?> getCategoryWithHighestExpenseByLastWeek() async {
    return _queryAdapter.query(
        'SELECT category, SUM(expense) AS total_expense FROM expenses WHERE date BETWEEN date(\'now\', \'-7 days\',\'localtime\') AND date(\'now\',\'localtime\') GROUP BY category ORDER BY total_expense DESC LIMIT 1;',
        mapper: (Map<String, Object?> row) => BestExpense(
            category: row['category'] as String,
            total_expense: row['total_expense'] as double));
  }

  @override
  Future<void> deleteExpense(int id) async {
    await _queryAdapter
        .queryNoReturn('DELETE FROM expenses WHERE id =?1', arguments: [id]);
  }

  @override
  Future<List<String>> getMonthYear(String category) async {
    return _queryAdapter.queryList(
        'SELECT DISTINCT strftime(\'%m-%Y\', date) AS month_year FROM expenses WHERE category =?1 ORDER BY date DESC',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        arguments: [category]);
  }

  @override
  Future<List<ExpenseEntityModel>> getExpenseByCategory(String category) async {
    return _queryAdapter.queryList(
        'SELECT * FROM expenses WHERE category =?1 ORDER BY date DESC',
        mapper: (Map<String, Object?> row) => ExpenseEntityModel(
            id: row['id'] as int?,
            category: row['category'] as String?,
            type: row['type'] as String?,
            expenseTitle: row['expenseTitle'] as String?,
            expense: row['expense'] as double?,
            description: row['description'] as String?,
            date: row['date'] as String?),
        arguments: [category]);
  }

  @override
  Future<List<ExpenseEntityModel>> getAllExpense() async {
    return _queryAdapter.queryList('SELECT * FROM expenses ORDER BY date DESC',
        mapper: (Map<String, Object?> row) => ExpenseEntityModel(
            id: row['id'] as int?,
            category: row['category'] as String?,
            type: row['type'] as String?,
            expenseTitle: row['expenseTitle'] as String?,
            expense: row['expense'] as double?,
            description: row['description'] as String?,
            date: row['date'] as String?));
  }

  @override
  Future<List<String>> getAllMonthYear() async {
    return _queryAdapter.queryList(
        'SELECT DISTINCT strftime(\'%m-%Y\', date) AS month_year FROM expenses ORDER BY date DESC',
        mapper: (Map<String, Object?> row) => row.values.first as String);
  }

  @override
  Future<List<SingleAnalysis>> getAnalysisDataByMonth() async {
    return _queryAdapter.queryList(
        'SELECT strftime(\'%Y-%m\', date) as time,  SUM(expense) AS total_amount FROM expenses WHERE strftime(\'%Y\', date) = strftime(\'%Y\', \'now\',\'localtime\') GROUP by strftime(\'%Y-%m\', date) ORDER by date DESC',
        mapper: (Map<String, Object?> row) => SingleAnalysis(
            time: row['time'] as String,
            total_amount: row['total_amount'] as double));
  }

  @override
  Future<void> insertExpense(ExpenseEntityModel expense) async {
    await _expenseEntityModelInsertionAdapter.insert(
        expense, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateExpense(ExpenseEntityModel expense) async {
    await _expenseEntityModelUpdateAdapter.update(
        expense, OnConflictStrategy.abort);
  }
}
