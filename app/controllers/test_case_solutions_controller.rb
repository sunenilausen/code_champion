class TestCaseSolutionsController < ApplicationController
  before_action :set_test_case_solution, only: [:show, :edit, :update, :destroy]

  # GET /test_case_solutions
  def index
    @test_case_solutions = TestCaseSolution.all
  end

  # GET /test_case_solutions/1
  def show
  end

  # GET /test_case_solutions/new
  def new
    @test_case_solution = TestCaseSolution.new
  end

  # GET /test_case_solutions/1/edit
  def edit
  end

  # POST /test_case_solutions
  def create
    @test_case_solution = TestCaseSolution.new(test_case_solution_params)

    if @test_case_solution.save
      redirect_to @test_case_solution, notice: 'Test case solution was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /test_case_solutions/1
  def update
    if @test_case_solution.update(test_case_solution_params)
      redirect_to @test_case_solution, notice: 'Test case solution was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /test_case_solutions/1
  def destroy
    @test_case_solution.destroy
    redirect_to test_case_solutions_url, notice: 'Test case solution was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_case_solution
      @test_case_solution = TestCaseSolution.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def test_case_solution_params
      params.require(:test_case_solution).permit(:solution_id, :test_case_id, :status)
    end
end
