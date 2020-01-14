class Instructor

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all
        @@all
    end
# If there is a BoatingTest whose **** name AND student **** match the values passed in,
# this method should update the status of that BoatingTest to 'passed'. 

# If there is no matching test, this method should create a test with the student, that boat
# test name, and the status 'passed'. Either way, it should return the BoatingTest instance.
    def pass_student(student, test_name)

        # if BoatingTest.all.select {|bt|bt.test_name == test_name} && BoatingTest.all.select {|bt|bt.student == student}
        #     status = "passed"
        # else
        #     BoatingTest.new(student, test_name, status = "passed", instructor = nil)
        # end

        arr = BoatingTest.all.select {|bt|bt.student == student}

        matched = arr.find {|bt| bt.test_name == test_name}

        if matched
            matched.status = 'passed'
        else
            BoatingTest.new(student,test_name,'passed',self)   
        end 

        def fail_student(student, test_name)

            # if BoatingTest.all.select {|bt|bt.test_name == test_name} && BoatingTest.all.select {|bt|bt.student == student}
            #     status = "passed"
            # else
            #     BoatingTest.new(student, test_name, status = "passed", instructor = nil)
            # end
    
            arr = BoatingTest.all.select {|bt|bt.student == student}
    
            matched = arr.find {|bt| bt.test_name == test_name}
    
            if matched
                matched.status = 'failed'
            else
                BoatingTest.new(student,test_name,'failed',self)   
            end
    end



end
