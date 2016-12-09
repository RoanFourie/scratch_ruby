require_relative "../problem_6"
    describe "Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum"
        describe "sum_of_squares" do
            it "Calculate the sum of the squares of the natural numbers" do
                expect(sum_of_squares(10)).to eq(385)
            end
        end
        describe "square_of_sum" do
            it "Calculate the square of the sum of the natural numbers" do
                expect(square_of_sum(10)).to eq(3025)
            end
        end
        describe "sum_square_difference" do
            it "10 calculates to the value of 2640" do
                expect(sum_square_difference(10)).to eq(2640)
            end
        end
