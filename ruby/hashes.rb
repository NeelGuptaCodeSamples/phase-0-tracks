# > Interior Design Program
# > Write form for client to fill out
#   > Include:
#     > Name
#     > Age
#     > # Children
#     > Decor Theme
      # > Likes kids
# > Prompt user to see if they are a client or a designer
# > If they are a designer,
#   > Ask how many people they want to interview
# > If they are a client,
#   > Ask them for the above information and store it 
#   > Ask the client at the end of the program if they'd like to change any of the information

def client_program
  puts "Hello and welcome to my store. What is your name?"
  $user_information[:client_name] = gets.chomp
  p $user_information

  puts "Nice to meet you, #{$user_information[:client_name]}"

  puts "How many children do you have?"
  $user_information[:num_children] = gets.to_i
  p $user_information

  puts "What kind of theme do you like for decor?"
  $user_information[:decor_theme] = gets.chomp
  p $user_information

  puts "Thank you for answering these questions, below you can find a list of the information you provided us."

end


def user_interface
  $user_information = {}
  puts "Welcome to the design store, are you a client or a designer?"
  $user_information[:user] = gets.chomp
  p $user_information

  if $user_information[:user] == "Client" || $user_information[:user] == "client"
    client_program
  elsif $user_information[:user] == "Designer" || $user_information[:user] == "designer"
    designer_program
  else
    puts "Invalid Input"
  end

end


user_interface