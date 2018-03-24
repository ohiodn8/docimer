module SectionsHelper
def checked(area)
  @section.option.nil? ? false : @section.option.match(area)
end
    
end
