def prompt
  puts 'Enter a request:'
  gets.chomp
end


def run
  
  input = prompt
  
  while true
    if input == '/'
      puts 'Welcome'
    elsif input == '/about'
      puts 'This is a CLI application'
    elsif input == '/rachel'
      puts 'Hey Rachel'
    elsif input == '/max'
      puts 'Hey Max'
    else
      puts 'I dont know what to do'
    end
    
    input = prompt 
  end

end


run
