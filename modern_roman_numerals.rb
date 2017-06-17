def roman_numeral(num)
  roman = ''


  thousands = num / 1000
  hundreds = num % 1000 / 100
  tens = num % 100 / 10
  ones = num % 10

  #thousands
  roman << 'M' * thousands

  #hundreds
  if hundreds == 9
    roman << 'CM'
    hundreds = 0
  elsif hundreds >= 5
    roman << 'D'
    hundreds -= 5
  elsif hundreds == 4
    roman << 'CD'
    hundreds = 0
  end
  roman << 'C' * hundreds

  #tens
  if tens == 9
    roman << 'XC'
    tens = 0
  elsif tens >= 5
    roman << 'L'
    tens -= 5
  elsif tens == 4
    roman << 'XL'
    tens = 0
  end
  roman << 'X' * tens

  #ones
  if ones == 9
    roman << 'IX'
    ones = 0
  elsif ones >= 5
    roman << 'V'
    ones -= 5
  elsif ones == 4
    roman << 'IV'
    ones = 0
  end
  roman << 'I' * ones

  roman
end

#tests
puts roman_numeral(4)
puts roman_numeral(29)
puts roman_numeral(49)
puts roman_numeral(499)
puts roman_numeral(1549)
puts roman_numeral(2019)
puts roman_numeral(99)
