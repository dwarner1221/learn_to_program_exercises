input_string = ''
puts "Talk to grandma:"
while (input_string != 'BYE')
  input_string = gets.chomp
 
  if input_string == 'BYE'
    bye_counter = 1
    while (bye_counter != 3)
      puts "..."
      input_string = gets.chomp
      if input_string == "BYE"
       bye_counter += 1
      else
       bye_counter = 3
      end
    end
  end

  if input_string != input_string.upcase
    puts "HUH?! SPEAK UP, HONEY!"
  elsif input_string == "BYE"
    puts "GOODBYE DEAR!."
  else
    puts "NO, NOT SINCE " + (rand(21) + 1930).to_s + "!"
  end

end
