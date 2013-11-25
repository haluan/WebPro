class ProfilsekolahsController < ApplicationController
  before_action :set_profilsekolah, only: [:show, :edit, :update, :destroy]

  # GET /profilsekolahs
  # GET /profilsekolahs.json
  def index
    @profilsekolahs = Profilsekolah.all
  end

  # GET /profilsekolahs/1
  # GET /profilsekolahs/1.json
  def show
  end

  # GET /profilsekolahs/new
  def new
    @profilsekolah = Profilsekolah.new
  end

  # GET /profilsekolahs/1/edit
  def edit
  end

  # POST /profilsekolahs
  # POST /profilsekolahs.json
  def create
    @profilsekolah = Profilsekolah.new(profilsekolah_params)

    respond_to do |format|
      if @profilsekolah.save
        format.html { redirect_to @profilsekolah, notice: 'Profilsekolah was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profilsekolah }
      else
        format.html { render action: 'new' }
        format.json { render json: @profilsekolah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profilsekolahs/1
  # PATCH/PUT /profilsekolahs/1.json
  def update
    respond_to do |format|
      if @profilsekolah.update(profilsekolah_params)
        format.html { redirect_to @profilsekolah, notice: 'Profilsekolah was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profilsekolah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profilsekolahs/1
  # DELETE /profilsekolahs/1.json
  def destroy
    @profilsekolah.destroy
    respond_to do |format|
      format.html { redirect_to profilsekolahs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profilsekolah
      @profilsekolah = Profilsekolah.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profilsekolah_params
      params.require(:profilsekolah).permit(:title, :deskripsi)
    end
end
