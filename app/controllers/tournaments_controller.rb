class TournamentsController < ApplicationController
  load_and_authorize_resource

  # GET /tournaments
  def index
  end

  # GET /tournaments/1
  def show
  end

  # GET /tournaments/new
  def new
  end

  # GET /tournaments/1/edit
  def edit
  end

  # POST /tournaments
  def create
    if @tournament.save
      redirect_to @tournament, notice: 'Tournament was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tournaments/1
  def update
    if @tournament.update(tournament_params)
      redirect_to @tournament, notice: 'Tournament was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tournaments/1
  def destroy
    @tournament.destroy
    redirect_to tournaments_url, notice: 'Tournament was successfully destroyed.'
  end

  private

    # Only allow a trusted parameter "white list" through.
    def tournament_params
      params.require(:tournament).permit(:title, :description, :start_at, :end_at)
    end
end
