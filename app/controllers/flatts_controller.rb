class FlattsController < ApplicationController
  before_action :set_flatt, only: %i[ show edit update destroy ]

  # GET /flatts or /flatts.json
  def index
    @flatts = Flatt.all
  end

  # GET /flatts/1 or /flatts/1.json
  def show
  end

  # GET /flatts/new
  def new
    @flatt = Flatt.new
  end

  # GET /flatts/1/edit
  def edit
  end

  # POST /flatts or /flatts.json
  def create
    @flatt = Flatt.new(flatt_params)

    respond_to do |format|
      if @flatt.save
        format.html { redirect_to flatt_url(@flatt), notice: "Flatt was successfully created." }
        format.json { render :show, status: :created, location: @flatt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flatt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flatts/1 or /flatts/1.json
  def update
    respond_to do |format|
      if @flatt.update(flatt_params)
        format.html { redirect_to flatt_url(@flatt), notice: "Flatt was successfully updated." }
        format.json { render :show, status: :ok, location: @flatt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flatt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flatts/1 or /flatts/1.json
  def destroy
    @flatt.destroy

    respond_to do |format|
      format.html { redirect_to flatts_url, notice: "Flatt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flatt
      @flatt = Flatt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flatt_params
      params.require(:flatt).permit(:name, :address, :description, :price_per_night, :number_of_guests)
    end
end
