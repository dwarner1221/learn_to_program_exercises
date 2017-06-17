my_array = []

puts 'Enter the words you wish to sort, one at a . Press \'Enter\' on an empty line to end:'
entry = nil

while entry != ''
  entry = gets.chomp
  my_array.push entry
end

if my_array[0] == ''
  puts "You did not enter any words!"
else
  puts "Here are your sorted words:"
  my_array.sort.each do |word|
    puts word
  end
end
