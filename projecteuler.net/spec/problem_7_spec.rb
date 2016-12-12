require_relative "../problem_7"
    describe "What is the 10 001st prime number?"
        describe "is_prime" do
            it "give true for 2" do
                expect(is_prime(2)).to eq(true)
            end
            it "give true for 3" do
                expect(is_prime(3)).to eq(true)
            end
            it "give true for 5" do
                expect(is_prime(5)).to eq(true)
            end
            it "give true for 7" do
                expect(is_prime(7)).to eq(true)
            end
            it "give true for 11" do
                expect(is_prime(11)).to eq(true)
            end
            it "give true for 13" do
                expect(is_prime(13)).to eq(true)
            end
            it "give false for 1" do
                expect(is_prime(1)).to eq(false)
            end
            it "give false for 4" do
                expect(is_prime(4)).to eq(false)
            end
            it "give false for 6" do
                expect(is_prime(6)).to eq(false)
            end
            it "give false for 8" do
                expect(is_prime(8)).to eq(false)
            end
            it "give false for 9" do
                expect(is_prime(9)).to eq(false)
            end
            it "give false for 10" do
                expect(is_prime(10)).to eq(false)
            end
            it "give false for 12" do
                expect(is_prime(12)).to eq(false)
            end
        end
        describe "next_prime" do
            it "must return 3 when given 2" do
                expect(next_prime(2)).to eq(3)
            end
            it "must return 5 when given 3" do
                expect(next_prime(3)).to eq(5)
            end
            it "must return 7 when given 5" do
                expect(next_prime(5)).to eq(7)
            end
            it "must return 11 when given 7" do
                expect(next_prime(7)).to eq(11)
            end
        end
        describe "find_nth_prime" do
            it "must return 5 for input of 3" do
                expect(find_nth_prime(3)).to eq(5)
            end
            it "must return 11 for input of 5" do
                expect(find_nth_prime(5)).to eq(11)
            end
            it "must return 13 for input of 6" do
                expect(find_nth_prime(6)).to eq(13)
            end
            it "must return 29 for input of 10" do
                expect(find_nth_prime(10)).to eq(29)
            end
            it "must return 97 for input of 100" do
                expect(find_nth_prime(100)).to eq(541)
            end
        end
