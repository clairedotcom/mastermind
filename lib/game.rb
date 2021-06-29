require_relative "creator.rb"
require_relative "guesser.rb"

class Game
    COLORS = ["blue","green","yellow","orange","pink","purple"]

    def initialize
        @creator = Creator.new
    end    

    def play
        code = code_to_colors(@creator.make_code)
        #display(code)
        guess = Array.new(4)
        
        until guess == code do
            guess = solicit_guess
            display(check_guess(guess,code))
        end
        puts "You win!"
    end
    
    def code_to_colors(array)
        code_str = array.map {|value| COLORS[value]}
    end
    
    def solicit_guess
        puts "Please enter your guess (one by one): "
        guess = Array.new(4) {gets.chomp}
    end  
    
    def check_guess(guess,code)
        feedback = Array.new(4)
        guess.each_with_index do |value,index|
            if value == code[index]
                feedback[index] = "black"
            elsif code.include?(value)
                feedback[index] = "white"    
            else
                feedback[index] = "empty"     
            end    
        end
        return feedback
    end
    
    def display(array)
        puts "#{array[0]} | #{array[1]} | #{array[2]} | #{array[3]}"
    end    
end    

#def red
#"\e[31m#{self}\e[0m"
#end