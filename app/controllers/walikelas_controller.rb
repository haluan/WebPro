class WalikelasController < ApplicationController
  before_action :set_walikela, only: [:show, :edit, :update, :destroy]

  # GET /walikelas
  # GET /walikelas.json
  def index
    @walikelas = Walikela.all
  end

  # GET /walikelas/1
  # GET /walikelas/1.json
  def show
  end

  # GET /walikelas/new
  def new
    @walikela = Walikela.new
  end

  # GET /walikelas/1/edit
  def edit
  end

  # POST /walikelas
  # POST /walikelas.json
  def create
    @walikela = Walikela.new(walikela_params)

    respond_to do |format|
      if @walikela.save
        format.html { redirect_to @walikela, notice: 'Walikela was successfully created.' }
        format.json { render action: 'show', status: :created, location: @walikela }
      else
        format.html { render action: 'new' }
        format.json { render json: @walikela.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /walikelas/1
  # PATCH/PUT /walikelas/1.json
  def update
    respond_to do |format|
      if @walikela.update(walikela_params)
        format.html { redirect_to @walikela, notice: 'Walikela was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @walikela.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /walikelas/1
  # DELETE /walikelas/1.json
  def destroy
    @walikela.destroy
    respond_to do |format|
      format.html { redirect_to walikelas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_walikela
      @walikela = Walikela.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def walikela_params
      params.require(:walikela).permit(:tahun_ajaran, :kela_id, :guru_id)
    end
end
