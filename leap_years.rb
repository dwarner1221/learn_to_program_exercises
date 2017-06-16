puts "Enter a starting year (ex 1978):"
year_begin = gets.chomp.to_i
puts "Enter an ending year:"
year_end = gets.chomp.to_i
puts "The leap years are:"
while (year_begin <= year_end)
  if year_begin % 4 == 0
    if (year_begin % 100 == 0 && year_begin % 400 == 0) || year_begin % 100 != 0
      print year_begin.to_s + ' '
    end
  end
  year_begin += 1
end