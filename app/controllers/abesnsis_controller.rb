class AbesnsisController < ApplicationController
  before_action :set_abesnsi, only: [:show, :edit, :update, :destroy]

  # GET /abesnsis
  # GET /abesnsis.json
  def index
    @abesnsis = Abesnsi.all
  end

  # GET /abesnsis/1
  # GET /abesnsis/1.json
  def show
  end

  # GET /abesnsis/new
  def new
    @abesnsi = Abesnsi.new
  end

  # GET /abesnsis/1/edit
  def edit
  end

  # POST /abesnsis
  # POST /abesnsis.json
  def create
    @abesnsi = Abesnsi.new(abesnsi_params)

    respond_to do |format|
      if @abesnsi.save
        format.html { redirect_to @abesnsi, notice: 'Abesnsi was successfully created.' }
        format.json { render action: 'show', status: :created, location: @abesnsi }
      else
        format.html { render action: 'new' }
        format.json { render json: @abesnsi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abesnsis/1
  # PATCH/PUT /abesnsis/1.json
  def update
    respond_to do |format|
      if @abesnsi.update(abesnsi_params)
        format.html { redirect_to @abesnsi, notice: 'Abesnsi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @abesnsi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abesnsis/1
  # DELETE /abesnsis/1.json
  def destroy
    @abesnsi.destroy
    respond_to do |format|
      format.html { redirect_to abesnsis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abesnsi
      @abesnsi = Abesnsi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abesnsi_params
      params.require(:abesnsi).permit(:status, :mahasiswa_id, :jadwal_id)
    end
end
