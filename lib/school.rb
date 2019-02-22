class School 
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    @name = name
    @grade = grade
    if @roster.include?(grade) == true # check if roster already includes grade
      @roster[grade] << name
    else 
      @roster[grade] = [] # create array for grade if it doesn't already exist
      @roster[grade] << name # push name to array
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, students| # iterate over roster
      @roster[grade] = students.sort # for each grade, sort students array
    end
  end
end