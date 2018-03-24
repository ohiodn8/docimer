class NavtextsController < ApplicationController
  before_action :set_navtext, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_cmsadmin!    

  def index
    @navtexts = Navtext.all
  end

  def show
  end

  def new
    @navtext = Navtext.new
  end

  def edit
  end

  def create
    @navtext = Navtext.new(navtext_params)

    respond_to do |format|
      if @navtext.save
        format.html { redirect_back fallback_location: root_path, notice: 'Navtext was successfully created.' }
        format.json { render :show, status: :created, location: @navtext }
      else
        format.html { redirect_back fallback_location: root_path }
        format.json { render json: @navtext.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @navtext.update(navtext_params)
        format.html { redirect_back fallback_location: root_path, notice: 'Navtext was successfully updated.' }
        format.json { render :show, status: :ok, location: @navtext }
      else
        format.html { redirect_back fallback_location: root_path }
        format.json { render json: @navtext.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @navtext.destroy
    respond_to do |format|
      format.html { redirect_back fallback_location: root_path, notice: 'Navtext was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_navtext
      @navtext = Navtext.find(params[:id])
    end

    def navtext_params
      params.require(:navtext).permit(:text)
    end
end
