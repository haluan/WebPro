class KelasController < ApplicationController
  before_action :set_kela, only: [:show, :edit, :update, :destroy]

  # GET /kelas
  # GET /kelas.json
  def index
    @kelas = Kela.all
  end

  # GET /kelas/1
  # GET /kelas/1.json
  def show
  end

  # GET /kelas/new
  def new
    @kela = Kela.new
  end

  # GET /kelas/1/edit
  def edit
  end

  # POST /kelas
  # POST /kelas.json
  def create
    @kela = Kela.new(kela_params)

    respond_to do |format|
      if @kela.save
        format.html { redirect_to @kela, notice: 'Kela was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kela }
      else
        format.html { render action: 'new' }
        format.json { render json: @kela.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kelas/1
  # PATCH/PUT /kelas/1.json
  def update
    respond_to do |format|
      if @kela.update(kela_params)
        format.html { redirect_to @kela, notice: 'Kela was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kela.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kelas/1
  # DELETE /kelas/1.json
  def destroy
    @kela.destroy
    respond_to do |format|
      format.html { redirect_to kelas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kela
      @kela = Kela.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kela_params
      params.require(:kela).permit(:nama)
    end
end
