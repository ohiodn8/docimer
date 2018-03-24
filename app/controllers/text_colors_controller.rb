class TextColorsController < ApplicationController
  before_action :set_text_color, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_cmsadmin!    

  def new
    @text_color = TextColor.new
  end

  def create
    @text_color = TextColor.new(text_color_params)

    respond_to do |format|
      if @text_color.save
        format.html { redirect_to root_path, notice: 'Text color was successfully created.' }
        format.json { render :show, status: :created, location: @text_color }
      else
        format.html { render :new }
        format.json { render json: @text_color.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @text_color.destroy
    respond_to do |format|
      format.html { redirect_to text_colors_url, notice: 'Text color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_text_color
      @text_color = TextColor.find(params[:id])
    end

    def text_color_params
      params.require(:text_color).permit(:name, :color)
    end
end
