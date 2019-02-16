require 'pry'
# code here!
class School

  # attr_accessor :roster
  def initialize(school)
    @name = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade_hash)
    @roster[grade_hash] = [] if @roster[grade_hash] == nil
    @roster[grade_hash] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, studentlist|
      studentlist.sort!
    end
    @roster
  end
end
