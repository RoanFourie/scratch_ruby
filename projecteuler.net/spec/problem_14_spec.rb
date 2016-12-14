require_relative "../problem_14"
  describe "Longest Collatz sequence for starting number under 1 000 000"
      describe "longest_collatz_for" do
          it "given 13 must return 10 terms" do
              expect(collatz_for(13)).to eq(10)
          end
      end
