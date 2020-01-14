class Student

    attr_accessor :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(name, status, instructor)             ####
        BoatingTest.new(self, name, status, instructor)
    end

    def self.find_student(target_name)
        self.all.find{|stu|stu.first_name == target_name}
    end

    def grade_percentage
        all_my_tests = BoatingTest.all.select{|bt|bt.student == self}  ### SELECT ALWAYS NEEDS A CONDITIONAL 
        passed_exams = all_my_tests.select{|at|al.status == "passed"} ## passed as a string because we setted it like this
        all_my_tests.length.to_f * 100 / passed_exams.count ### to_f (float)
    end
end
