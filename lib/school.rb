class School 
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    @student_name = name 
    @grade = grade                #REVIEW THIS PROCESS
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end
  
   def grade(number) #retrieve studens from a grade
    @roster[number]
  end

  def sort
    @roster.each do |grade, name| #sorting through the students
      @roster[grade] = name.sort
    end
  end
end