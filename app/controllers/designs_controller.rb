class DesignsController < ApplicationController
    
  def create
    @design = Design.new(design_params)

    respond_to do |format|
      if @design.save
        format.html { redirect_back fallback_location: root_path, notice: 'Design Selected!' }
        format.json { render :show, status: :created, location: @design }
      else
        format.html { redirect_back fallback_location: root_path, notice: 'Error:  you have to select both fields!' }
        format.json { render json: @design.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def design_params
      params.require(:design).permit(:text_color_id, :body_color_id)
    end
end
