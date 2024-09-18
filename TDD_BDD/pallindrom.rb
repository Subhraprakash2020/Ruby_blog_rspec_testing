def palindrome?(number)
  number_string = number.to_s
  number_string == number_string.reverse
end