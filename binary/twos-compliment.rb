

      # For 4 bit
      def convert_4bit_to_signed_binary(binary)
        binary_int = binary.to_i(2)
        if binary_int >= 2**3
          return binary_int - 2**4
        else
          return binary_int
        end
      end

      # For 8 bit
      def convert_8bit_to_signed_binary(binary)
        binary_int = binary.to_i(2)
        if binary_int >= 2**7
          return binary_int - 2**8
        else
          return binary_int
        end
      end

      # For 16 bit
      def convert_16bit_to_signed_binary(binary)
        binary_int = binary.to_i(2)
        if binary_int >= 2**15
          return binary_int - 2**16
        else
          return binary_int
        end
      end

      i = convert_4bit_to_signed_binary('1001')  # will give -7
      j = convert_8bit_to_signed_binary('1001')  # will give 9
      k = convert_16bit_to_signed_binary('1001') # will give 9

      puts i
      puts j
