class GurusController < ApplicationController
  before_action :set_guru, only: [:show, :edit, :update, :destroy]

  # GET /gurus
  # GET /gurus.json
  def index
    @gurus = Guru.all
  end

  # GET /gurus/1
  # GET /gurus/1.json
  def show
  end

  # GET /gurus/new
  def new
    @guru = Guru.new
  end

  # GET /gurus/1/edit
  def edit
  end

  # POST /gurus
  # POST /gurus.json
  def create
    @guru = Guru.new(guru_params)

    respond_to do |format|
      if @guru.save
        format.html { redirect_to @guru, notice: 'Guru was successfully created.' }
        format.json { render action: 'show', status: :created, location: @guru }
      else
        format.html { render action: 'new' }
        format.json { render json: @guru.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gurus/1
  # PATCH/PUT /gurus/1.json
  def update
    respond_to do |format|
      if @guru.update(guru_params)
        format.html { redirect_to @guru, notice: 'Guru was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @guru.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gurus/1
  # DELETE /gurus/1.json
  def destroy
    @guru.destroy
    respond_to do |format|
      format.html { redirect_to gurus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guru
      @guru = Guru.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guru_params
      params.require(:guru).permit(:nip, :nama, :email, :password,:password_confirmation, :alamat, :agama, :birthday, :birthplace, :ingat_aku)
    end
end
