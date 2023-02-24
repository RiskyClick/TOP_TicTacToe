require './players.rb'
require './board.rb'


class Game
    include DrawBoard

    
    def initialize(p1, p2)
        @p1 = p1
        @p2 = p2
        @open_spots = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        @turn = 0
        @gameover = false
        @draw = false
    end


    def play    
        until @gameover or @draw
            draw
            if @turn % 2 == 0
                pick_square(@p1)
            else
                pick_square(@p2)
            end
            check_win()
            check_draw()
            @turn += 1
        end
    end


    def pick_square(player)
        vaild = false
        until vaild
            puts "#{player.name}'s turn, enter your position"
            num = gets.chomp.to_i
            if num.between?(1, 9) and @open_spots[num - 1] != 'X' and @open_spots[num - 1] != 'O'
                vaild = true
                @open_spots[num - 1] = player.x_or_o
                player.positions.push(num - 1)
            else
                puts "#{num} is not a vaild choise, try again"
            end
        end
    end


    def check_win
        possible_wins = [
            [0,1,2],
            [3,4,5],
            [6,7,8],
            [0,3,6],
            [1,4,7],
            [2,5,8],
            [0,4,8],
            [2,4,6]
        ]
        possible_wins.each { |sub|
            
            #p "sub: #{sub}"
            #p "@p1.positions: #{@p1.positions}"
            #p "@p2.positions: #{@p2.positions}"
            #p "sub - @p1.positions: #{sub - @p1.positions}"
            #p "empty?: #{(sub - @p1.positions).empty?}"
            #p ""
            
            if (sub - @p1.positions).empty?
                clear
                draw
                puts "#{@p1.name} is the WINNER!"
                @gameover = true
            end
            if (sub - @p2.positions).empty?
                clear
                draw
                puts "#{@p2.name} is the WINNER!"
                @gameover = true
            end
        }
    end


    def check_draw
        @open_spots.each {|x| 
            if x.is_a? Integer
                return
            end
        }
        @draw = true
        clear
        puts "Draw game!"
    end
end
