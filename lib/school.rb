# code here!
class School
  attr_accessor :name, :roster
  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)
    if @roster[grade].nil?
       @roster[grade] = [name]
     else
       @roster[grade] << name
     end
   end

   def grade(grade)
     @roster[grade]
   end

   def sort
     @roster.each do |k, v|
       roster[k] = v.sort
     end
  end
end
