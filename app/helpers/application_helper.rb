module ApplicationHelper
  
  def active_class(link_path)
   # @dropdown_active = "active"
    current_page?(link_path) ? "active" : ""
  end

  def dropdown_active_class(link_path)
    @dropdown_active = "active"
    current_page?(link_path) ? "active" : ""
  end
  
  
end
