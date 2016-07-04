# ALIAS MANAGER
# Ideological goal: Create a program for the CIA that generates a new alias for the user

# First, the user will be prompted by the program
# The program will ask the user what name they would like to scramble
# Next, the program will take in the user's name and swap the first and last name
# After swapping, the program will look at the first name and modify it
#   For each letter in the first name that is a vowel, the program will identify whether it is a vowel or a consonant
#     If the letter is a vowel, replace it with the next vowel
#     If it is a consonant, replace the letter with the next consonant
#   Next, the program will look at the second name (after swap)
#     For each letter in the second name that is a vowel, the program will identify whether it is a vowel or a consonant
#     If the letter is a vowel, replace it with the next vowel

def user_interface
	puts "Hello, agent. Enter the name you would like to scramble below."
end

def alias_generator(agent_name)

 original_name = agent_name.split(" ")
 p original_name

 alias_first = original_name.last.split("")
 p alias_first

 alias_second = original_name.first.split("")
 p alias_second

 i = 0
 vowels_str = "aeioua"
 consonant_str = "bcdfghjklmnpqrstvwxyzb"
 new_string = ""

 while i < agent_name.length


 	
  scrambled_first = alias_first.map.with_index do |letter, i|
  	p letter
  	p letter.include?(vowels_str)

	end
	p scrambled_first.join("")
end

alias_generator("Neel Gupta")