def longest_consec(strarr, k)
  result = ""
  if strarr.size == 0
    return ""
  elsif strarr.size < k
    return ""
  elsif k <= 0
    return ""
  else
    (0..(strarr.size - k)).each do |i|
      string = ""
      (0..k-1).each do |j|
        string += strarr[j+i]
      end
      if string.size > result.size
        result = string
      end
    end
  end
  return result
end

puts(longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2))
puts(longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3))
