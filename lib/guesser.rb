class Guesser
    def make_code
        guess = 4.times.map {|value| rand(1..6).to_s}
    end    
end    