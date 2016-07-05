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
	agent_name = gets.chomp

	alias_generator(agent_name)

end

def alias_generator(agent_name)
 vowels = "aeioua"
 consonants = "bcdfghjklmnpqrstvwxyzb"
 new_string = ""

 # Original name --> Array
 original_name = agent_name.split(" ")
 p original_name

 # Swap first and last name
 alias_first = original_name.last.split("")
 p alias_first

 alias_second = original_name.first.split("")
 p alias_second

# Scramble First
 scrambled_first = []
 alias_first.map! do |letter|
 	scrambled_first << letter.next
 end
 p first = scrambled_first.join("")

# Scrambled Second
 scrambled_second = [] 
 alias_second.map! do |letter|
 	scrambled_second << letter.next
 end
 p second = scrambled_second.join("")
end

user_interface