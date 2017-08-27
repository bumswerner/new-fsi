class Assoziation < ApplicationRecord
  belongs_to :category
  belongs_to :courseofstudy
  belongs_to :lecture
  
  
  def course_type_check
   course = Courseofstudy.all
   type = Studytype.all
  # Coursetype
  # .select('courseofstudy.id, courseofstudy.name, studytypes.name')
  # .joins(:studytype)
  # .find_by(courseofstudy.studytype_id => studytype.id) # this should be the last  
  end
end
