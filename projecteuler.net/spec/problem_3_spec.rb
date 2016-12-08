require_relative "../problem_3"
  describe "Calculate the largest prime factor of a number"
    describe "largest_prime_factor" do
      it "calculates 2 as 2" do
        expect(largest_prime_factor(2)).to eq(2)
      end
      it "claculate 3 as 3" do
        expect(largest_prime_factor(3)).to eq(3)
      end
      it "calculates 13195 as 29" do
        expect(largest_prime_factor(13195)).to eq(29)
      end
    end
