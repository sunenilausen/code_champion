class ProblemsController < ApplicationController
  load_and_authorize_resource

  # GET /problems
  def index
  end

  # GET /problems/1
  def show
  end

  # GET /problems/new
  def new
  end

  # GET /problems/1/edit
  def edit
  end

  # POST /problems
  def create
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
      params.require(:problem).permit(:title, :description)
    end
end
