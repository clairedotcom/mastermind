require_relative "creator.rb"

class Game
    COLORS = ["blue","green","yellow","orange","pink","purple"]

    def initialize
        @creator = Creator.new
    end    

    def play
        code_int = @creator.make_code
        puts code_to_colors(code_int)
    end
    
    def code_to_colors(array)
        code_str = array.map {|value| COLORS[value]}
    end    

end    

#def red
#"\e[31m#{self}\e[0m"
#end