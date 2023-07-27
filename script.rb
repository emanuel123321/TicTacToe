require_relative "text.rb"

include Text

Text.start

$positions = Array.new
$positions = ['1', '2', '3', '4', '5', '6', '7', '8', '9']
game_over = false
i = 0
arr_alegeri = Array.new


class Game
    attr_accessor :name, :symbol, :win

    @@nr = 0
    
    def initialize name, symbol, win
        @win = win
        @name = name
        @symbol = symbol
        @@nr += 1
        puts "player #{@@nr}: #{@name} -> #{@symbol}"
    end
end

player1 = Game.new($nume1, "X" ,false)
player2 = Game.new($nume2, "0" ,false )

while(!game_over && i < 9)
    Text.sablon
    alege = ""

    if(i % 2 == 0)
        puts "#{player1.name}, choose a number: "
        

        #verifica daca casuta este deja ocupata
    loop do
        exist = false
        alege = gets.chomp.to_i
        arr_alegeri.each do |index|
            if(index == alege)
                exist = true
            end
        end
        if(!exist && (alege > 0 && alege < 10))
            $positions[alege - 1] = player1.symbol
            arr_alegeri[i] = alege
            i +=1
            break
        else
            Text.incorect
        end
    end
#se verifica daca jocul este castigat
        game_over = verification(game_over)
        
        if(game_over)
            player1.win = true
        end
    else
        puts "#{player2.name}, choose a number: "

#verifica daca casuta este deja ocupata       
loop do
    exist = false
    alege = gets.chomp.to_i
    arr_alegeri.each do |index|
        if(index == alege)
            exist = true
        end
    end
    if(!exist && (alege > 0 && alege < 10))
        $positions[alege - 1] = player2.symbol
        arr_alegeri[i] = alege
        i +=1
        break
    else
        Text.incorect
    end
end
#se verifica daca jocul este castigat
        game_over = verification(game_over)

        if(game_over)
            player2.win = true
        end
    end

    
end

if(game_over) 
    Text.sablon
    if(player1.win)
        puts "congrats #{player1.name} you win"
    else
        puts "congrats #{player2.name} you win"
    end
end