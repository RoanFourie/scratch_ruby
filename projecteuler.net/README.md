# To run the tests, follow this example:
The process is as follows:

Install the rspec gem from the console:

gem install rspec
Then create a folder (we'll name it root) with the following content:

root/my_model.rb

root/spec/my_model_spec.rb

#my_model.rb

class MyModel
 def the_truth 
  true
 end
end

#spec/my_model_spec.rb

require_relative '../my_model'

describe MyModel do
  it "should be true" do
    MyModel.new.the_truth.should be_true
  end
end
Then in the console run

rspec spec/my_model_spec.rb
viola!
