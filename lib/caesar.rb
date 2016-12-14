$alphabet_downcase=[*?a..?z]
$alphabet_upcase=[*?A..?Z]
def caesar_encode(user_string,user_offset)
    user_string.split("").map do |character|
    if  $alphabet_downcase.include?(character) #looks for lowercase letters
        character_index = $alphabet_downcase.index(character)+user_offset #gets index of letter and adds a value to move it
        new_character = $alphabet_downcase[character_index%26] #changes number into new letter equal to new index
        
      elsif $alphabet_upcase.include?(character) #looks for upcase letters
        character_index = $alphabet_upcase.index(character)+user_offset #gets index of letter and adds a value to move it 
        new_character = $alphabet_upcase[character_index%26]
         
      else
        character #will return any character that is not a letter
    end
    end.join("")
end
# puts "What would you like to encode?"
# user_string= gets.chomp
# puts "offset"
# user_offset= gets.chomp.to_i
# puts caesar_encode(user_string,user_offset)

def caesar_decode(user_string,user_offset)
     user_string.split("").map do |character|
    if  $alphabet_downcase.include?(character) #looks for lowercase letters
        character_index = $alphabet_downcase.index(character)-user_offset #gets index of letter and adds a value to move it
        new_character = $alphabet_downcase[character_index%26] #changes number into new letter equal to new index
        
      elsif $alphabet_upcase.include?(character) #looks for upcase letters
        character_index = $alphabet_upcase.index(character)-user_offset #gets index of letter and adds a value to move it 
        new_character = $alphabet_upcase[character_index%26]
         
      else
        character #will return any character that is not a letter
    end
    end.join("")
end
