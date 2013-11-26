class SiswasController < ApplicationController
  before_action :set_siswa, only: [:show, :edit, :update, :destroy]

  # GET /siswas
  # GET /siswas.json
  def index
    @siswas = Siswa.all
  end

  # GET /siswas/1
  # GET /siswas/1.json
  def show
  end

  # GET /siswas/new
  def new
    @siswa = Siswa.new
  end

  # GET /siswas/1/edit
  def edit
    @siswa.orangtua_id=@siswa.orangtua.nama
  end

  # POST /siswas
  # POST /siswas.json
  def create
    @temp = Siswa.new(siswa_params)
    id=Orangtua.find_by_nama(@temp.orangtua_id)
    @siswa=@temp
    @siswa.orangtua_id=id

    respond_to do |format|
      if @siswa.save
        format.html { redirect_to @siswa, notice: 'Siswa was successfully created.' }
        format.json { render action: 'show', status: :created, location: @siswa }
      else
        format.html { render action: 'new' }
        format.json { render json: @siswa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /siswas/1
  # PATCH/PUT /siswas/1.json
  def update
    
    respond_to do |format|
      if @siswa.update(siswa_params)
       
        format.json { head :no_content }
        @temp=Orangtua.find_by_nama(@siswa.orangtua_id)
        if @temp.nil?
          @siswa.orangtua_id=0
           format.html { render action: 'edit', notice: "Orangtua tidak ditemukan" }
        else
          @siswa.orangtua_id=@temp
           format.html { redirect_to @siswa, notice: 'Siswa was successfully updated.' }
        end        
          @siswa.save
        
      else
        format.html { render action: 'edit' }
        format.json { render json: @siswa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /siswas/1
  # DELETE /siswas/1.json
  def destroy
    @siswa.destroy
    respond_to do |format|
      format.html { redirect_to siswas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_siswa
      @siswa = Siswa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def siswa_params
      params.require(:siswa).permit(:nis, :nama, :email, :password,:password_confirmation, :alamat, :agama, :birthday, :birthplace, :ingat_aku, :orangtua_id)
    end
end
