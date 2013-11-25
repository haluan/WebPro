class BerkelasController < ApplicationController
  before_action :set_berkela, only: [:show, :edit, :update, :destroy]

  # GET /berkelas
  # GET /berkelas.json
  def index
    @berkelas = Berkela.all
  end

  # GET /berkelas/1
  # GET /berkelas/1.json
  def show
  end

  # GET /berkelas/new
  def new
    @berkela = Berkela.new
  end

  # GET /berkelas/1/edit
  def edit
  end

  # POST /berkelas
  # POST /berkelas.json
  def create
    @berkela = Berkela.new(berkela_params)

    respond_to do |format|
      if @berkela.save
        format.html { redirect_to @berkela, notice: 'Berkela was successfully created.' }
        format.json { render action: 'show', status: :created, location: @berkela }
      else
        format.html { render action: 'new' }
        format.json { render json: @berkela.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /berkelas/1
  # PATCH/PUT /berkelas/1.json
  def update
    respond_to do |format|
      if @berkela.update(berkela_params)
        format.html { redirect_to @berkela, notice: 'Berkela was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @berkela.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /berkelas/1
  # DELETE /berkelas/1.json
  def destroy
    @berkela.destroy
    respond_to do |format|
      format.html { redirect_to berkelas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_berkela
      @berkela = Berkela.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def berkela_params
      params.require(:berkela).permit(:tahun_ajaran, :mahasiswa_id, :kela_id)
    end
end
