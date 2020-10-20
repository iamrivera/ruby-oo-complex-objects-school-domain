require 'pry'

class School 
    attr_accessor :school, :roster, :student, :grade

    def initialize(school_name)
        @school = school_name
        @roster = {}
    end

    def add_student(student, grade)
        @student = student
        if @roster.key?(grade) == false
            @roster[grade] = [] 
            @roster[grade] << "#{student}"
        else @roster.key?(grade) == true
            @roster[grade] << "#{student}"
        end
        # binding.pry
    end

    def grade(grade)
        @roster[grade]        
    end

    def sort
        roster.each do |grade, student|
            student.sort!
        end
    end
end
