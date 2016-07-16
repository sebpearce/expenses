# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Expense Sources

ExpenseSource.destroy_all

expense_sources = [
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
]

expense_sources.each do |expense_source|
  ExpenseSource.create(name: expense_source)
end

p "Created #{ExpenseSource.count} expense sources."

# Income Sources

IncomeSource.destroy_all

income_sources = [
  'Job',
  'Partner\'s job',
  'Gifts',
  'Tax return',
  'Other',
]

income_sources.each do |income_source|
  IncomeSource.create(name: income_source)
end

p "Created #{IncomeSource.count} income sources."

# Expense Items

ExpenseItem.destroy_all

expense_items = [
  [DateTime.new(2015, 6, 22), 3205],
  [DateTime.new(2015, 6, 22), 1200],
  [DateTime.new(2015, 6, 22), 200],
  [DateTime.new(2015, 6, 23), 2400],
  [DateTime.new(2015, 6, 24), 1200],
  [DateTime.new(2015, 6, 25), 250],
  [DateTime.new(2015, 6, 26), 470],
  [DateTime.new(2015, 6, 26), 409],
  [DateTime.new(2015, 6, 26), 500],
  [DateTime.new(2015, 6, 27), 550],
  [DateTime.new(2015, 6, 27), 1052],
  [DateTime.new(2015, 6, 28), 905],
  [DateTime.new(2015, 6, 28), 399],
]

expense_items.each do |date, amount|
  ExpenseItem.create(date: date, amount: amount)
end

p "Created #{ExpenseItem.count} expense items."

# Income Items

IncomeItem.destroy_all

income_items = [
  [DateTime.new(2015, 6, 12), 100000],
  [DateTime.new(2015, 6, 18), 400000],
  [DateTime.new(2015, 6, 25), 50000],
]

income_items.each do |date, amount|
  IncomeItem.create(date: date, amount: amount)
end

p "Created #{IncomeItem.count} income items."
