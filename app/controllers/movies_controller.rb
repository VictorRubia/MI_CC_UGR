class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy ]

  # GET or /movies.json
  def index
    @movies = Movie.all
  end

  # GET /movies/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_params
      params.permit(:title, :synopsis, :launch_date, :age_classification, :length, :genre, :director, :poster, :rating_avg)
    end
end
