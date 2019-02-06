class School
  
  
  
  attr_accessor  :roster
  attr_reader :name

  def initialize (name)
    @name=name
    @roster= {}
   
  end


  def add_student (kid, grades)
    roster[grades] ||= []
    roster[grades]<< kid
  end
  
  def grade (grades)
    roster[grades]
  end
  
  def sort 
  nu_hash = {}
  roster.each do |grades, kid| 
    nu_hash[grades] = kid.sort 
  end 
  nu_hash
  end
  

end