class HomeController < ApplicationController
  def index
    @recent_problems = Problem.take(5)
  end
end
