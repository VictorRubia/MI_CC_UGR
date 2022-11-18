class SessionsController < ApplicationController
  before_action :set_session, only: %i[ show update destroy ]

  # GET /sessions.json
  def index
    @sessions = Session.all
  end

  # GET /sessions/1.json
  def show
  end

  # POST /sessions.json
  def create
    @session = Session.new(session_params)

    if @session.save
      render :show, status: :created, location: @session
    else
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def session_params
      params.permit(:movie_id, :times, :dates)
    end
end
