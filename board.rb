require './game.rb'

module DrawBoard

    def draw
        clear
        puts " #{@open_spots[0]} | #{@open_spots[1]} | #{@open_spots[2]} "
        puts "---+---+---"
        puts " #{@open_spots[3]} | #{@open_spots[4]} | #{@open_spots[5]} "
        puts "---+---+---"
        puts " #{@open_spots[6]} | #{@open_spots[7]} | #{@open_spots[8]} "
    end

    def clear
        print "\e[2J\e[H"
    end
    
end