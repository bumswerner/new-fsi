module SetGlobalParams
  extend ActiveSupport::Concern
  
  included do 
    before_action :set_pagination_params
    before_action :set_description_length
  end
  
  def set_pagination_params
    @faculties_per_page = 2
    @courseofstudies_per_page = 2
    @categories_per_page = 2
    @lectures_per_page = 2
    @sections_per_page = 2
    @materials_per_page = 4
  end
  
  def set_description_length
    @user_description_length = 150
  end
  
end