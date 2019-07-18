class Solutions::TestsController < ApplicationController
  before_action :set_solution

  def update
    @solution.run_tests
  end

  private
    def set_solution
      @solution = Solution.find(params[:id])
    end
end
