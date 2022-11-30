class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy ]

  # GET or /movies.json
  def index
    @movies = Movie.all
  end

  # GET /movies/1.json
  def show
  end

  # POST /movies or /movies.json
  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: @movie, status: :created, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sessions/1.json
  def update
    if @movie.update(movie_params)
      render :show, status: :ok, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sessions/1.json
  def destroy
    Session.find_by(movie_id: @movie.id).destroy
    @movie.destroy
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
