class OrangtuasController < ApplicationController
  before_action :set_orangtua, only: [:show, :edit, :update, :destroy]

  # GET /orangtuas
  # GET /orangtuas.json
  def index
    @orangtuas = Orangtua.all
  end

  # GET /orangtuas/1
  # GET /orangtuas/1.json
  def show
  end

  # GET /orangtuas/new
  def new
    @orangtua = Orangtua.new
  end

  # GET /orangtuas/1/edit
  def edit
  end

  # POST /orangtuas
  # POST /orangtuas.json
  def create
    @orangtua = Orangtua.new(orangtua_params)

    respond_to do |format|
      if @orangtua.save
        format.html { redirect_to @orangtua, notice: 'Orangtua was successfully created.' }
        format.json { render action: 'show', status: :created, location: @orangtua }
      else
        format.html { render action: 'new' }
        format.json { render json: @orangtua.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orangtuas/1
  # PATCH/PUT /orangtuas/1.json
  def update
    respond_to do |format|
      if @orangtua.update(orangtua_params)
        format.html { redirect_to @orangtua, notice: 'Orangtua was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @orangtua.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orangtuas/1
  # DELETE /orangtuas/1.json
  def destroy
    @orangtua.destroy
    respond_to do |format|
      format.html { redirect_to orangtuas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orangtua
      @orangtua = Orangtua.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orangtua_params
      params.require(:orangtua).permit(:NIK, :nama, :email, :password,:password_confirmation, :alamat, :pekerjaan, :agama, :birthday, :birthplace, :ingat_aku)
    end
end
