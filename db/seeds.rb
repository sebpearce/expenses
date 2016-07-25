# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# EXPENSES
# Expense Sources

@expense_sources = [
  'Rent',
  'Gas',
  'Water',
  'Electricity',
  'Internet',
  'Phone',
  'Public transport',
  'Groceries',
  'Eating out',
  'Clothes',
  'Haircuts',
  'Leisure',
  'Gym',
  'Petrol',
  'Media',
  'Equipment',
  'Gifts',
  'Donations',
  'One-offs',
  'Other',
].map do |expense_source|
  ExpenseSource.create(name: expense_source)
end

p "Created #{ExpenseSource.count} expense sources."

# Expense Items

@expense_items = [
  [DateTime.new(2016, 6, 22), 3205, @expense_sources.sample],
  [DateTime.new(2016, 6, 22), 1200, @expense_sources.sample],
  [DateTime.new(2016, 6, 22), 200, @expense_sources.sample],
  [DateTime.new(2016, 6, 23), 2400, @expense_sources.sample],
  [DateTime.new(2016, 6, 24), 1200, @expense_sources.sample],
  [DateTime.new(2016, 6, 25), 250, @expense_sources.sample],
  [DateTime.new(2016, 6, 26), 470, @expense_sources.sample],
  [DateTime.new(2016, 6, 26), 409, @expense_sources.sample],
  [DateTime.new(2016, 6, 26), 500, @expense_sources.sample],
  [DateTime.new(2016, 6, 27), 550, @expense_sources.sample],
  [DateTime.new(2016, 6, 27), 1052, @expense_sources.sample],
  [DateTime.new(2016, 6, 28), 905, @expense_sources.sample],
  [DateTime.new(2016, 6, 28), 399, @expense_sources.sample],
].map do |date, amount, source|
  ExpenseItem.create(date: date, amount: amount, expense_source: source)
end

p "Created #{ExpenseItem.count} expense items."

# Income Sources

@income_sources = [
  'Job',
  'Partner\'s job',
  'Gifts',
  'Tax return',
  'Other',
].map do |income_source|
  IncomeSource.create(name: income_source)
end

p "Created #{IncomeSource.count} income sources."

# Income Items

@income_items = [
  [DateTime.new(2016, 6, 12), 100000, @income_sources.sample],
  [DateTime.new(2016, 6, 18), 400000, @income_sources.sample],
  [DateTime.new(2016, 6, 25), 50000, @income_sources.sample],
].map do |date, amount, source|
  IncomeItem.create(date: date, amount: amount, income_source: source)
end

p "Created #{IncomeItem.count} income items."
