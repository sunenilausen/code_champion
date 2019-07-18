class TestCaseSolutionsController < ApplicationController
  before_action :set_test_case_solution

  # GET /test_case_solutions/1
  def show
  end

  # PATCH/PUT /test_case_solutions/1
  def update
    if @test_case_solution.update(test_case_solution_params)
      redirect_to @test_case_solution, notice: 'Test case solution was successfully updated.'
    else
      render :edit
    end
  end
end
