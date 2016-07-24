class CaptureJsonController < ApplicationController

  def index
    expense_sources = format_sources_as_json(ExpenseSource.all)
    income_sources = format_sources_as_json(IncomeSource.all)
    expense_items = format_expense_items_as_json(ExpenseItem.all)
    income_items = format_income_items_as_json(IncomeItem.all)
    settings = format_settings_as_json(Setting.all)
    shortcuts = format_settings_as_json(Shortcut.all)

    render json: {
      expense_sources: expense_sources,
      income_sources: income_sources,
      expense_items: expense_items,
      income_items: income_items,
      settings: settings,
      shortcuts: shortcuts,
    }
  end

  private

  def format_settings_as_json(query)
    query.to_a.map do |el|
      {
        name: el.name,
        value: el.value,
      }
    end
  end

  def format_sources_as_json(query)
    query.to_a.map do |el|
      {
        id: el.id,
        name: el.name,
      }
    end
  end

  def format_expense_items_as_json(query)
    query.to_a.map do |el|
    {
      id: el.id,
      date: el.date,
      amt: el.amount,
      desc: el.description,
      src: el.expense_source_id,
    }
    end
  end

  def format_income_items_as_json(query)
    query.to_a.map do |el|
    {
      id: el.id,
      date: el.date,
      amt: el.amount,
      desc: el.description,
      src: el.income_source_id,
    }
    end
  end
end
