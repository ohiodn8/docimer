class TemplatesController < ApplicationController
  before_action :set_template, only: [:update]
  before_action :authenticate_cmsadmin!    

  def create
    @template = Template.new(template_params)

    respond_to do |format|
      if @template.save
        format.html { redirect_back fallback_location: root_path, notice: 'Change was successfully effected!' }
        format.json { render :show, status: :created, location: @template }
      else
        format.html { redirect_back fallback_location: root_path, notice: 'Error: Change was not made' }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @template.update(template_params)
        format.html { redirect_back fallback_location: root_path, notice: 'Change was successfully updated!' }
        format.json { render :show, status: :ok, location: @template }
      else
        format.html { redirect_back fallback_location: root_path, notice: 'Error: Change was not made' }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_template
      @template = Template.find(params[:id])
    end

    def template_params
      params.require(:template).permit(:bar)
    end
end
