class Course
  attr_accessor :title, :schedule, :description

  def all
    @@courses
  end

end
