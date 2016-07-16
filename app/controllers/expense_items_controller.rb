class ExpenseItemsController < ApplicationController
  def index
    @expense_items = ExpenseItem.all
    render json: @expense_items
  end
end
