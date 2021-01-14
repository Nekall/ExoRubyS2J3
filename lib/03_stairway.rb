def intro
  puts"  ____"
  puts" /\\' .\\    _____"
  puts"/: \\___\\  / .  /\\         LE JEU DES D"
  puts"\\' / . / /____/..\\       Le premier en haut"
  puts" \\/___/  \\'  '\\  /    de l'escalier à gagné !"
  puts"          \\'__'\\/           -----------"
  puts"                           Edition 2 joueurs"
  puts"____________________________________________________________"
  puts""
  puts""
  puts""
end


def players
  puts "Hé toi ! Dis moi, comment s'appel le joueurs n°1 ?"
  print ">"
  player1 = gets.chomp
  puts "Hé toi ! Dis moi, comment s'appel le joueurs n°2 ?"
  print ">"
  player2 = gets.chomp

  puts ""
  puts ""
  puts ""
  puts "#{player1} & #{player2} vous êtes donc en bas de l'escalier"
  sleep(1)
  puts "à tour de rôle vous allez devoir lancer un dé, si vous tombez"
  sleep(1)
  puts "sur le chiffre 1, alors vous reculez d'une marche, si vous tombez"
  sleep(1)
  puts "sur les chiffres 2, 3 ou 4 vous restez sur la même marche, si vous"
  sleep(1)
  puts "tombez sur les chiffres 5 ou 6 vous grimpez d'une marche."
  sleep(1)
  print "Le premier sur la 10eme marche à gagné !"
  print "!"
  sleep(1)
  print "!"
  sleep(1)
  puts " "
  puts " "
  return player1, player2
end

#initialisation des scores
def play_init
  player1count = 0
  player2count = 0
  return player1count, player2count
end


#message pour le joueur 1 a lui de lancer !
def annonceA(player1)
  puts ""
  puts "#{player1} à toi de lancer le dé !"
  puts "Appuie sur la touche entrée !"
  loop do
    user_input = gets
    break if(user_input == "\n")

  end
end

#message pour le joueur 2 a lui de lancer !
def annonceB(player2)
  puts " "
  puts "#{player2} à toi de lancer le dé !"
  puts "Appuie sur la touche entrée !"
  loop do
    user_input = gets
    break if(user_input == "\n")

  end
end

#randomizer, le dé quoi !
def dice
  inprogress = rand(6)+1
  puts"  _____"
  puts" / .  /\\"
  puts"/____/..\\          #{inprogress}"
  puts"\\'  '\\  /"
  puts" \\'__'\\/"
  return inprogress
end


#Calcul en fonction du lancer de dé pour le joueur 1
def movesA(inprogress, player1, player1count)

  if(inprogress == 1 and player1count != 0)
    then player1count = player1count - 1
        puts "Oh non, #{player1} descend d'une marche"
  end
  if(inprogress == 5 or inprogress == 6)
    then player1count = player1count + 1
        puts "#{player1} grimpe d'une marche !"
  end
  if(inprogress == 2 or inprogress == 3 or inprogress == 4)
    then puts "#{player1} reste sur la même marche !"
  end
  puts "#{player1} est sur la marche #{player1count}"
  if(player1count >= 10)
    then puts"#{player1} a gagné ! Bravo"
          exit
  end
  return player1count
end

#Calcul en fonction du lancer de dé pour le joueur 2
def movesB(inprogress, player2, player2count)

  if(inprogress == 1 and player2count != 0)
    then player2count = player2count - 1
        puts "Oh non, #{player2} descend d'une marche"
  end
  if(inprogress == 5 or inprogress == 6)
    then player2count = player2count + 1
        puts "#{player2} grimpe d'une marche !"
  end
  if(inprogress == 2 or inprogress == 3 or inprogress == 4)
    then puts "#{player2} reste sur la même marche !"
  end
    puts "#{player2} est sur la marche #{player2count}"
    if(player2count >= 10)
      then puts"#{player2} a gagné ! Bravo"
            exit
    end
  return player2count
end


#orchestre
def perform
  intro
  player1, player2 = players
  player1count, player2count = play_init
  loop do
    annonceA(player1)
    inprogress = dice
    player1count = movesA(inprogress, player1, player1count)
    annonceB(player2)
    inprogress = dice
    player2count = movesB(inprogress, player2, player2count)
  end
end

perform
