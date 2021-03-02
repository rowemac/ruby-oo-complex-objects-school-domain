require 'pry'

# code here!
class School    
    
    attr_accessor :name, :roster
    
    def initialize(name, roster={})
        @name = name
        @roster = roster
    end 

    def add_student(student_name, grade_level)
        #check to see if the student grade exists
        #if it doesn't exist, add it
        roster[grade_level] ||= []
        #binding.pry
        #Memoization used----^
        #then, add the student_name to the grade_level
        roster[grade_level] << student_name
    end 

    def grade(grade_level)
        @roster[grade_level]
    end 

    def sort
        sorted_students = {}
        roster.each do | grade, students |
            sorted_students[grade] = students.sort
        end 
        sorted_students
    
    end 

end 


