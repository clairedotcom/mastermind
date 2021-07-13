require_relative "creator.rb"
require_relative "guesser.rb"

class Game
    #COLORS = ["blue","green","yellow","orange","pink","red"]

    def initialize
        @creator = Creator.new
    end    

    def play
        #code = code_to_colors(@creator.make_code)
        code = @creator.make_code
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
        puts "Please enter your guess: "
        guess = gets.chomp
        guess.split("")
        #guess = Array.new(4) {gets.chomp}
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
        #array.each do |item| 
        #    print map_colors(item)
        #end
        puts "#{map_colors(array[0])} | #{map_colors(array[1])} | #{map_colors(array[2])} | #{map_colors(array[3])}"
    end
    
    def map_colors(key)
        {
            #"blue" => "\e[34m blue \e[0m",
            #"green" => "\e[32m green \e[0m",
            #"yellow" => "\e[33m yellow \e[0m",
            #"orange" => "\e[47m orange \e[0m",
            #"pink" => "\e[35m pink \e[0m",
            "empty" => "\e[31m empty \e[0m",
            "black" => "\e[40m black \e[0m",
            "white" => "\e[7m white \e[27m"
        }[key]
    end    
end