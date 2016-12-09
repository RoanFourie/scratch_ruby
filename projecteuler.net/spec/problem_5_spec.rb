require_relative "../problem_5"
    describe "Find the smallest number that can be divided by each of the numbers without a remainder"
        describe "smallest_multiple" do
            it "Calculates 10 as 2520 " do
                expect(smallest_multiple(10)).to eq(2520)
            end
        end
