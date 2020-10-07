# code here!

class School

    attr_accessor :roster

    def initialize(roster)

        @roster = {}

    end

    def add_student(student, grade)

        if !@roster.has_key?(grade)
            @roster[grade] = []
            @roster[grade] << student
        else
            @roster[grade] << student
        end
    
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        result = {}
        @roster.each do |k,v|
            result[k] = v.sort
        end
        result
    end

end