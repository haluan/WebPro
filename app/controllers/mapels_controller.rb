class MapelsController < ApplicationController
  before_action :set_mapel, only: [:show, :edit, :update, :destroy]

  # GET /mapels
  # GET /mapels.json
  def index
    @mapels = Mapel.all
  end

  # GET /mapels/1
  # GET /mapels/1.json
  def show
  end

  # GET /mapels/new
  def new
    @mapel = Mapel.new
  end

  # GET /mapels/1/edit
  def edit
  end

  # POST /mapels
  # POST /mapels.json
  def create
    @mapel = Mapel.new(mapel_params)

    respond_to do |format|
      if @mapel.save
        format.html { redirect_to @mapel, notice: 'Mapel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mapel }
      else
        format.html { render action: 'new' }
        format.json { render json: @mapel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mapels/1
  # PATCH/PUT /mapels/1.json
  def update
    respond_to do |format|
      if @mapel.update(mapel_params)
        format.html { redirect_to @mapel, notice: 'Mapel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mapel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mapels/1
  # DELETE /mapels/1.json
  def destroy
    @mapel.destroy
    respond_to do |format|
      format.html { redirect_to mapels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mapel
      @mapel = Mapel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mapel_params
      params.require(:mapel).permit(:kode, :nama)
    end
end
