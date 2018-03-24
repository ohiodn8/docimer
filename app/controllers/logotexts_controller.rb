class LogotextsController < ApplicationController
  before_action :set_logotext, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_cmsadmin!    

  def index
    @logotexts = Logotext.all
  end

  def show
  end

  def new
    @logotext = Logotext.new
  end

  def edit
  end

  def create
    @logotext = Logotext.new(logotext_params)

    respond_to do |format|
      if @logotext.save
        format.html { redirect_back fallback_location: root_path, notice: 'Logotext was successfully created.' }
        format.json { render :show, status: :created, location: @logotext }
      else
        format.html { render :new }
        format.json { render json: @logotext.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @logotext.update(logotext_params)
        format.html { redirect_back fallback_location: root_path, notice: 'Logotext was successfully updated.' }
        format.json { render :show, status: :ok, location: @logotext }
      else
        format.html { render :edit }
        format.json { render json: @logotext.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @logotext.destroy
    respond_to do |format|
      format.html { redirect_back fallback_location: root_path, notice: 'Logotext was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logotext
      @logotext = Logotext.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def logotext_params
      params.require(:logotext).permit(:text)
    end
end
