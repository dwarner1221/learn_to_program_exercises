def old_roman_numeral(num)
  roman = ''

  roman << 'M' * (num / 1000)
  roman << 'D' * (num % 1000 / 500)
  roman << 'C' * (num % 500 / 100)
  roman << 'L' * (num % 100 / 50)
  roman << 'X' * (num % 50 / 10)
  roman << 'V' * (num % 10 / 5)
  roman << 'I' * (num % 5 / 1)

  roman
end

#tests
puts old_roman_numeral(4)
puts old_roman_numeral(22)
puts old_roman_numeral(109)
puts old_roman_numeral(499)
puts old_roman_numeral(1537)
puts old_roman_numeral(2021)
puts old_roman_numeral(85)
