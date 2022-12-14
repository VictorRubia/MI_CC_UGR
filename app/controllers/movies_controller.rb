class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET or /movies.json
  def index
    @movies = Movie.all
  end

  # GET /movies/1.json
  def show
  end

  # POST /movies or /movies.json
  def create

    if !movie_params[:synopsis].present? && !movie_params[:launch_date].present? &&
        !movie_params[:length].present? && !movie_params[:genre].present? &&
        !movie_params[:director].present? && !movie_params[:poster].present? &&
        !movie_params[:rating_avg].present?
      @movies_db = JSON.parse(File.read('app/assets/json/movieDB.json'))
      @movie_json = @movies_db.select {|movie| movie["title"] == movie_params[:title]}
      @params = movie_params.merge(synopsis: @movie_json[0]['synopsis'], launch_date: @movie_json[0]['launch_date'],
                         length: @movie_json[0]['length'], genre: @movie_json[0]['genre'], director: @movie_json[0]['director'], poster: @movie_json[0]['poster'])
      @movie = Movie.new(@params)
    else
      @movie = Movie.new(movie_params)
    end

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
    Session.find_by(movie_id: @movie.id).destroy if Session.find_by(movie_id: @movie.id).present?
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
