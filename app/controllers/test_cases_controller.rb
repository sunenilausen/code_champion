class TestCasesController < ApplicationController
  before_action :set_test_case, only: [:show, :edit, :update, :destroy]
  before_action :set_problem, only: [:show, :edit, :update, :destroy, :new, :create]

  def index
  end

  # GET /test_cases/1
  def show
  end

  # GET /test_cases/new
  def new
    @test_case = TestCase.new
  end

  # GET /test_cases/1/edit
  def edit
  end

  # POST /test_cases
  def create
    @test_case = TestCase.new(test_case_params)
    @test_case.problem = @problem

    if @test_case.save
      redirect_to [@problem, @test_case], notice: 'Test case was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /test_cases/1
  def update
    if @test_case.update(test_case_params)
      redirect_to [@problem, @test_case], notice: 'Test case was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /test_cases/1
  def destroy
    @test_case.destroy
    redirect_to problem_path(@problem), notice: 'Test case was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_case
      @test_case = TestCase.find(params[:id])
    end

    def set_problem
      @problem = Problem.find(params[:problem_id])
    end

    # Only allow a trusted parameter "white list" through.
    def test_case_params
      params.require(:test_case).permit(:input, :output)
    end
end
