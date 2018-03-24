class BodyColorsController < ApplicationController
  before_action :set_body_color, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_cmsadmin!    

  def new
    @body_color = BodyColor.new
  end

  def create
    @body_color = BodyColor.new(body_color_params)

    respond_to do |format|
      if @body_color.save
        format.html { redirect_to root_path, notice: 'Body color was successfully created.' }
        format.json { render :show, status: :created, location: @body_color }
      else
        format.html { render :new }
        format.json { render json: @body_color.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @body_color.destroy
    respond_to do |format|
      format.html { redirect_to body_colors_url, notice: 'Body color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_body_color
      @body_color = BodyColor.find(params[:id])
    end

    def body_color_params
      params.require(:body_color).permit(:name, :color)
    end
end
