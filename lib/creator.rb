class Creator
    def make_code
        code = 4.times.map {|value| rand(6).to_s}
    end    
end