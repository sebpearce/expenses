class IncomeSourcesController < ApplicationController
  def index
    @income_sources = IncomeSource.all
    render json: @income_sources
  end
end
