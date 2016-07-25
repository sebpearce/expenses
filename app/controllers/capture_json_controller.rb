# TODO: Move JSON formatting into a view model
# TODO: Put 6 month limit on records

class CaptureJsonController < ApplicationController
  def index
    render json: {
      expense_sources: format_sources_as_json(ExpenseSource.all),
      income_sources: format_sources_as_json(IncomeSource.all),
      expense_items: format_expense_items_as_json(ExpenseItem.all),
      income_items: format_income_items_as_json(IncomeItem.all),
      settings: format_settings_as_json(Setting.all),
      shortcuts: format_settings_as_json(Shortcut.all),
    }
  end

  private

  def format_settings_as_json(query)
    res = {}
    query.to_a.each do |el|
      res[el.name] = el.value
    end
    res
  end

  def format_sources_as_json(query)
    res = {}
    query.to_a.each do |el|
      res[el.id] = el.name
    end
    res
  end

  def format_expense_items_as_json(query)
    res = {}
    query.to_a.each do |el|
      res[el.id] = {
        date: el.date,
        amt: el.amount,
        desc: el.description,
        src: el.expense_source_id,
      }
    end
    res
  end

  def format_income_items_as_json(query)
    res = {}
    query.to_a.each do |el|
      res[el.id] = {
        date: el.date,
        amt: el.amount,
        desc: el.description,
        src: el.income_source_id,
      }
    end
    res
  end
end
