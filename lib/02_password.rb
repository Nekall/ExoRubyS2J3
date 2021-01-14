def signup
  puts "Entrez un mot de passe"
  print ">"
  password = gets.chomp
  return password
end

def login(password)
      puts "Veuillez saisir votre mot de passe"
      print ">"
      user_enter = gets.chomp

      if(user_enter != password)
        then loop do
              puts "Accès refusé !"
              puts "Veuillez resaisir votre mot de passe"
              print ">"
              user_enter = gets.chomp
              break if (user_enter == password)
        end
  end
end


def welcome_screen
   puts "WELCOME IN SECRET SPACE"
end

def perform
  password = signup
  login(password)
  welcome_screen
end

perform
