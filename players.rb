class Player

    @@other_char = ""

    def initialize(p_what, name, X_or_O)
        @p_what = p_what
        @name = get_name()
        @X_or_O = get_char(@p_what)
    end

    def get_name
        puts "What is your name?"
        return gets.chomp
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
                end
            end
        else
            if @@other_game_piece == 'X':
                @@other_game_piece = 'O'
                return 'O'
            else
                @@other_game_piece = 'X'
                return 'X'
            end
        end
    end

    def play(p1, p2)

    end
    





