class EkskulsController < ApplicationController
  before_action :set_ekskul, only: [:show, :edit, :update, :destroy]

  # GET /ekskuls
  # GET /ekskuls.json
  def index
    @ekskuls = Ekskul.all
  end

  # GET /ekskuls/1
  # GET /ekskuls/1.json
  def show
  end

  # GET /ekskuls/new
  def new
    @ekskul = Ekskul.new
  end

  # GET /ekskuls/1/edit
  def edit
  end

  # POST /ekskuls
  # POST /ekskuls.json
  def create
    @ekskul = Ekskul.new(ekskul_params)

    respond_to do |format|
      if @ekskul.save
        format.html { redirect_to @ekskul, notice: 'Ekskul was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ekskul }
      else
        format.html { render action: 'new' }
        format.json { render json: @ekskul.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ekskuls/1
  # PATCH/PUT /ekskuls/1.json
  def update
    respond_to do |format|
      if @ekskul.update(ekskul_params)
        format.html { redirect_to @ekskul, notice: 'Ekskul was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ekskul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ekskuls/1
  # DELETE /ekskuls/1.json
  def destroy
    @ekskul.destroy
    respond_to do |format|
      format.html { redirect_to ekskuls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ekskul
      @ekskul = Ekskul.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ekskul_params
      params.require(:ekskul).permit(:nama, :deskripsi, :guru_id)
    end
end
