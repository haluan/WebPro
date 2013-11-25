class MengajarsController < ApplicationController
  before_action :set_mengajar, only: [:show, :edit, :update, :destroy]

  # GET /mengajars
  # GET /mengajars.json
  def index
    @mengajars = Mengajar.all
  end

  # GET /mengajars/1
  # GET /mengajars/1.json
  def show
  end

  # GET /mengajars/new
  def new
    @mengajar = Mengajar.new
  end

  # GET /mengajars/1/edit
  def edit
  end

  # POST /mengajars
  # POST /mengajars.json
  def create
    @mengajar = Mengajar.new(mengajar_params)

    respond_to do |format|
      if @mengajar.save
        format.html { redirect_to @mengajar, notice: 'Mengajar was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mengajar }
      else
        format.html { render action: 'new' }
        format.json { render json: @mengajar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mengajars/1
  # PATCH/PUT /mengajars/1.json
  def update
    respond_to do |format|
      if @mengajar.update(mengajar_params)
        format.html { redirect_to @mengajar, notice: 'Mengajar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mengajar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mengajars/1
  # DELETE /mengajars/1.json
  def destroy
    @mengajar.destroy
    respond_to do |format|
      format.html { redirect_to mengajars_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mengajar
      @mengajar = Mengajar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mengajar_params
      params.require(:mengajar).permit(:tahun_ajaran, :guru_id, :mapel_id)
    end
end
