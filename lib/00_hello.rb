def say_hello
  puts "Comment t'appelles-tu ?"
  print ">"
  first_name = gets.chomp
  #puts "Bonjour, #{first_name} !"
end

def ask_first_name(first_name)
  puts "Bonjour, #{first_name}"
end

def perform
  first_name = ask_first_name
  say_hello(first_name)
end

perform
