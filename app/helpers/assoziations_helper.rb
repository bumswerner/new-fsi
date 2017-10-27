module AssoziationsHelper
  
  # gets an array of courseofstudies ids back
  def get_courseofstudy_ids courseofstudies
    i = 0
    ids = Array.new
    courseofstudies.each do |courseofstudy|
      ids.insert(i, courseofstudy.id)
      i = i + 1
    end
  end
  
end
