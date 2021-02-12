# code here!
require "pry"
class School
    attr_accessor :school, :name, :roster
    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else 
            @roster[grade] = []
            @roster[grade] << name
        end
    end
    def grade(grade)
        self.roster[grade]
    end
    def sort
        self.roster.select do |grade, name|
            name.sort!
        end
    end
end