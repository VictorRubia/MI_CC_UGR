class SessionsController < ApplicationController
  before_action :set_session, only: %i[ show update destroy ]
  before_action :prepare_get_cartelera, only: %i[ get_cartelera ]

  # GET /sessions.json
  def index
    @sessions = Session.all
  end

  # GET /sessions/1.json
  def show
  end

  def get_cartelera
  end

  # POST /sessions.json
  def create
    @session = Session.new(session_params)

    if @session.save
      render :show, status: :created, location: @session
    else
      puts @session.save!
      render json: @session.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sessions/1.json
  def update
    if @session.update(session_params)
      render :show, status: :ok, location: @session
    else
      render json: @session.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sessions/1.json
  def destroy
    @session.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    def prepare_get_cartelera
      if params[:dates] == nil
        @session = Session.where(dates: Time.now.strftime("%d/%m/%Y").to_s)
        @movie = Movie.where(id: Session.where(dates: Time.now.strftime("%d/%m/%Y").to_s).select(:movie_id))
      else
        @session = Session.where(dates: params[:dates])
        @movie = Movie.where(id: Session.where(dates: params[:dates]).select(:movie_id))
      end
    end

    # Only allow a list of trusted parameters through.
    def session_params
      params.permit(:movie_id, :times, :dates)
    end
end
