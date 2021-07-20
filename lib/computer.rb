class Computer
#have a method to generate guesses according to game strategy
    def initial_guess
        guess = 4.times.map {|value| rand(1..6).to_s}
    end
    
    def make_guess(guess,feedback)
        new_guess = Array.new(4)
        feedback.each_with_index do |value,index|
            if value == "black"
                new_guess[index] = guess[index]
            else
                new_guess[index] = rand(1..6).to_s
            end    
        end
        return new_guess
    end 

#method to make a code from random numbers
    def make_code
        code = 4.times.map {|value| rand(1..6).to_s}
    end 
end    