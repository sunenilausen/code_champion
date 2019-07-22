class SolutionsController < ApplicationController
  load_and_authorize_resource

  # GET /solutions
  def index
  end

  # GET /solutions/1
  def show
  end

  # GET /solutions/new
  def new
    @solution.problem = Problem.find(params[:problem_id])
  end

  # GET /solutions/1/edit
  def edit
  end

  # POST /solutions
  def create
    @solution.user = current_user
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
    # Only allow a trusted parameter "white list" through.
    def solution_params
      params.require(:solution).permit(:problem_id, :code)
    end
end
