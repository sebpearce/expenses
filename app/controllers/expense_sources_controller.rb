class ExpenseSourcesController < ApplicationController
  def index
    @expense_sources = ExpenseSource.all
    render json: @expense_sources
  end
end
