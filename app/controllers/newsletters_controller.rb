class NewslettersController < ApplicationController
  before_action :set_newsletter, only: %i[ show destroy ]
  before_action :authenticate_user!, except: [:create]

  # GET /newsletters
  # GET /newsletters.json
  def index
    @newsletters = Newsletter.all
  end

  # GET /newsletters/1
  # GET /newsletters/1.json
  def show
  end

  # POST /newsletters
  # POST /newsletters.json
  def create
    @newsletter = Newsletter.new(newsletter_params)

    if @newsletter.save
      render :show, status: :created, location: @newsletter
    else
      render json: @newsletter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /newsletters/1
  # PATCH/PUT /newsletters/1.json
  def update
    if @newsletter.update(newsletter_params)
      render :show, status: :ok, location: @newsletter
    else
      render json: @newsletter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /newsletters/1
  # DELETE /newsletters/1.json
  def destroy
    @newsletter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsletter
      @newsletter = Newsletter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def newsletter_params
      params.require(:newsletter).permit(:email)
    end
end
