class SectionsController < ApplicationController

  def create
    @section = Section.new(section_params)

      if @section.save
          redirect_to root_path, notice: if @section.option.empty? 
                    print = "Blogs removed from Navbar"
                else 
                    print = "Blogs Added to Navbar!"
                end
      else
      render :new 
    end
  end

  private
    def section_params
      params.require(:section).permit(option:[])
    end
end
