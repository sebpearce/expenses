class IncomeItemsController < ApplicationController
  def index
    @income_items = IncomeItem.all
    render json: @income_items
  end
end
