class CaptureController < ApplicationController
  def index
    @expense_sources = ExpenseSource.all
    respond_to do |format|
      format.html
    end
  end
end
