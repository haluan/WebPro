class BerekskulsController < ApplicationController
  before_action :set_berekskul, only: [:show, :edit, :update, :destroy]

  # GET /berekskuls
  # GET /berekskuls.json
  def index
    @berekskuls = Berekskul.all
  end

  # GET /berekskuls/1
  # GET /berekskuls/1.json
  def show
  end

  # GET /berekskuls/new
  def new
    @berekskul = Berekskul.new
  end

  # GET /berekskuls/1/edit
  def edit
  end

  # POST /berekskuls
  # POST /berekskuls.json
  def create
    @berekskul = Berekskul.new(berekskul_params)

    respond_to do |format|
      if @berekskul.save
        format.html { redirect_to @berekskul, notice: 'Berekskul was successfully created.' }
        format.json { render action: 'show', status: :created, location: @berekskul }
      else
        format.html { render action: 'new' }
        format.json { render json: @berekskul.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /berekskuls/1
  # PATCH/PUT /berekskuls/1.json
  def update
    respond_to do |format|
      if @berekskul.update(berekskul_params)
        format.html { redirect_to @berekskul, notice: 'Berekskul was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @berekskul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /berekskuls/1
  # DELETE /berekskuls/1.json
  def destroy
    @berekskul.destroy
    respond_to do |format|
      format.html { redirect_to berekskuls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_berekskul
      @berekskul = Berekskul.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def berekskul_params
      params.require(:berekskul).permit(:tahun, :mahasiswa_id, :ekskul_id)
    end
end
