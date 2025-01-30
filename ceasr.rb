#Ceasar cypher to the right
#I need two arguments, one string for the phrase and another int for the spin
def cesar_cypher(word,shift)
    alphabet=('a'..'z').to_a
    upper=('A'..'Z').to_a
    encryption=word.chars.map do |char|
        if alphabet.include?(char)
            counting=(alphabet.index(char)+shift) % 26
            alphabet[counting]
        elsif upper.include?(char)
            counting2=(upper.index(char)+shift) % 26
            upper[counting2]
        else
            char
        end
    end
    puts encryption.join
end

cesar_cypher("bacWz",2)