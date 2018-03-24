class FootertextsController < ApplicationController
  before_action :set_footertext, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_cmsadmin!    

  def index
    @footertexts = Footertext.all
  end

  def show
  end

  def new
    @footertext = Footertext.new
  end

  def edit
  end

  def create
    @footertext = Footertext.new(footertext_params)

    respond_to do |format|
      if @footertext.save
        format.html { redirect_back fallback_location: root_path, notice: 'Footertext was successfully created.' }
        format.json { render :show, status: :created, location: @footertext }
      else
        format.html { render :new }
        format.json { render json: @footertext.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @footertext.update(footertext_params)
        format.html { redirect_back fallback_location: root_path, notice: 'Footertext was successfully updated.' }
        format.json { render :show, status: :ok, location: @footertext }
      else
        format.html { render :edit }
        format.json { render json: @footertext.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @footertext.destroy
    respond_to do |format|
      format.html { redirect_back fallback_location: root_path, notice: 'Footertext was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_footertext
      @footertext = Footertext.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def footertext_params
      params.require(:footertext).permit(:text)
    end
end
