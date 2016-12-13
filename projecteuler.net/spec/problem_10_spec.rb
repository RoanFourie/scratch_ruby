require_relative "../problem_10"
  describe "Find the sum of all the primes below two million"
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
      describe "sum_of_primes" do
          it "given 2 must return 2" do
              expect(sum_of_primes(2)).to eq(2)
          end
          it "given 3 must return 5" do
              expect(sum_of_primes(3)).to eq(5)
          end
          it "given 4 must return 5" do
              expect(sum_of_primes(4)).to eq(5)
          end
          it "given 10 must return 17" do
              expect(sum_of_primes(10)).to eq(17)
          end
      end
