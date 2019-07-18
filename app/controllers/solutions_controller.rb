class SolutionsController < ApplicationController
  before_action :set_solution, only: [:show, :edit, :update, :destroy]

  # GET /solutions
  def index
    @solutions = Solution.all
  end

  # GET /solutions/1
  def show
  end

  # GET /solutions/new
  def new
    @solution = Solution.new
  end

  # GET /solutions/1/edit
  def edit
  end

  # POST /solutions
  def create
    @solution = Solution.new(solution_params)

    if @solution.save
      redirect_to @solution, notice: 'Solution was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /solutions/1
  def update
    if @solution.update(solution_params)
      redirect_to @solution, notice: 'Solution was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /solutions/1
  def destroy
    @solution.destroy
    redirect_to solutions_url, notice: 'Solution was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solution
      @solution = Solution.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def solution_params
      params.require(:solution).permit(:problem_id, :user_id, :code)
    end
end
