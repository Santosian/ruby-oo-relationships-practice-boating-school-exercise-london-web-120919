require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Student.new("Tyson")
s2 = Student.new("Dyson")
s3 = Student.new("Johnson")

i1 = Instructor.new(i1)
i2 = Instructor.new(i2)

bt1 = s1.add_boating_test("Don't Crash 101", "pending", i1)
bt2 = s2.add_boating_test("Power Steering 202", "failed", i1)
bt2 = s2.add_boating_test("Power Steering 201", "passed", i2)


binding.pry

0#leave this here to ensure binding.pry isn't the last line

