class Player

    @@other_char = ""
    attr_accessor :name
    attr_accessor :x_or_o
    attr_accessor :positions

    def initialize(p_what, name="", x_or_o="")
        @p_what = p_what
        @name = get_name()
        @x_or_o = get_char(@p_what)
        @positions = []
    end

    def get_name
        if @p_what == 1
            puts "Player 1, what is your name?"
            return gets.chomp
        else
            puts "Player 2, what is your name?"
            return gets.chomp
        end
    end

    def get_char(p_what)
        if p_what == 1
            vaild_char = false
            until vaild_char
                puts "Pick either 'X' or 'O'"
                choose = gets.chomp.upcase
                if choose == 'X' or choose == 'O'
                    @@other_game_piece = choose
                    return choose
                else
                    puts "Not a valid choise"
                end
            end
        else
            if @@other_game_piece == 'X'
                @@other_game_piece = 'O'
                return 'O'
            else
                @@other_game_piece = 'X'
                return 'X'
            end
        end
    end
end
