# TODO: Move JSON formatting into a view model
# TODO: Put 6 month limit on records

class CaptureJsonController < ApplicationController
  def index
    render json: {
      expense_sources: format_sources_as_json(ExpenseSource.all),
      income_sources: format_sources_as_json(IncomeSource.all),
      expense_items: format_items_as_json(ExpenseItem.all),
      income_items: format_items_as_json(IncomeItem.all),
      settings: format_settings_as_json(Setting.all),
      shortcuts: format_settings_as_json(Shortcut.all),
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

  def format_items_as_json(query)
    query.to_a.map do |el|
    {
      id: el.id,
      date: el.date,
      amt: el.amount,
      desc: el.description,
      src: el.source_id,
    }
    end
  end
end
