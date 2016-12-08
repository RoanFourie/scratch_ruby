require "student.rb"
describe Student do
	describe "introduction" do
		@target = Student.new(:target => "Roan", :first_name => "ben")
		Student.introduction.should == "Hi Roan, I'm ben"
	end
	
end