class Api::V1::CosmsController < ApplicationController
  before_action :set_cosm, only: %i[ show update destroy ]

  # GET /cosms
  def index
    @cosms = Cosm.all

    render json: @cosms
  end

  # GET /cosms/1
  def show
    render json: @cosm
  end

  # POST /cosms
  def create
    @cosm = Cosm.new(cosm_params)

    if @cosm.save
      render json: @cosm, status: :created, location: @cosm
    else
      render json: @cosm.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cosms/1
  def update
    if @cosm.update(cosm_params)
      render json: @cosm
    else
      render json: @cosm.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cosms/1
  def destroy
    @cosm.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cosm
      @cosm = Cosm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cosm_params
      params.require(:cosm).permit(:name, :description, :price)
    end
end
