class Course
  attr_accessor :title, :schedule, :description
  @@courses = []
  def all
    @@courses
  end

end
