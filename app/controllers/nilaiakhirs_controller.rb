class NilaiakhirsController < ApplicationController
  before_action :set_nilaiakhir, only: [:show, :edit, :update, :destroy]

  # GET /nilaiakhirs
  # GET /nilaiakhirs.json
  def index
    @nilaiakhirs = Nilaiakhir.all
  end

  # GET /nilaiakhirs/1
  # GET /nilaiakhirs/1.json
  def show
  end

  # GET /nilaiakhirs/new
  def new
    @nilaiakhir = Nilaiakhir.new
  end

  # GET /nilaiakhirs/1/edit
  def edit
  end

  # POST /nilaiakhirs
  # POST /nilaiakhirs.json
  def create
    @nilaiakhir = Nilaiakhir.new(nilaiakhir_params)

    respond_to do |format|
      if @nilaiakhir.save
        format.html { redirect_to @nilaiakhir, notice: 'Nilaiakhir was successfully created.' }
        format.json { render action: 'show', status: :created, location: @nilaiakhir }
      else
        format.html { render action: 'new' }
        format.json { render json: @nilaiakhir.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nilaiakhirs/1
  # PATCH/PUT /nilaiakhirs/1.json
  def update
    respond_to do |format|
      if @nilaiakhir.update(nilaiakhir_params)
        format.html { redirect_to @nilaiakhir, notice: 'Nilaiakhir was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nilaiakhir.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nilaiakhirs/1
  # DELETE /nilaiakhirs/1.json
  def destroy
    @nilaiakhir.destroy
    respond_to do |format|
      format.html { redirect_to nilaiakhirs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nilaiakhir
      @nilaiakhir = Nilaiakhir.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nilaiakhir_params
      params.require(:nilaiakhir).permit(:nilai, :berkela_id, :mapel_id)
    end
end
