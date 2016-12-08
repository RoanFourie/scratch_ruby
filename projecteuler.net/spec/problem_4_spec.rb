require_relative "../problem_4"
  describe "Find the largest palindrome product of two x-digit numbers"
    describe "largest_palindrome" do
      it "calculates 2-digits as 9009" do
        expect(largest_palindrome(2)).to eq(9009)
      end
    end
