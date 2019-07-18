class ProblemsController < ApplicationController
  before_action :set_problem, only: [:show, :edit, :update, :destroy]

  # GET /problems
  def index
    @problems = Problem.all
  end

  # GET /problems/1
  def show
  end

  # GET /problems/new
  def new
    @problem = Problem.new
  end

  # GET /problems/1/edit
  def edit
  end

  # POST /problems
  def create
    @problem = Problem.new(problem_params)

    if @problem.save
      redirect_to @problem, notice: 'Problem was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /problems/1
  def update
    if @problem.update(problem_params)
      redirect_to @problem, notice: 'Problem was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /problems/1
  def destroy
    @problem.destroy
    redirect_to problems_url, notice: 'Problem was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_problem
      @problem = Problem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def problem_params
      params.require(:problem).permit(:title)
    end
end
