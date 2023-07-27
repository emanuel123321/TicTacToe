module Text
    def intro
        puts "hello, welcome to my X and 0 game"
    end
    def incorect
        print "incorrect number, choose another: "
    end
    def start
        print "First player name: "
        $nume1 = gets.chomp
        print "Secound player name: "
        $nume2 = gets.chomp
    end

    def sablon
        puts ""
        puts "#{$positions[0]} | #{$positions[1]} | #{$positions[2]}"
        puts "----------"
        puts "#{$positions[3]} | #{$positions[4]} | #{$positions[5]}"
        puts "----------"
        puts "#{$positions[6]} | #{$positions[7]} | #{$positions[8]}"
        puts ""
    end
end

def verification(game_over)
    if($positions[0] == $positions[1] && $positions[0] == $positions[2])
        return true
    elsif($positions[3] == $positions[4] && $positions[3] == $positions[5])
        return true
    elsif($positions[6] == $positions[7] && $positions[6] == $positions[8])
        return true
    elsif($positions[0] == $positions[3] && $positions[0] == $positions[6])
        return true
    elsif($positions[1] == $positions[4] && $positions[1] == $positions[7])
        return true
    elsif($positions[2] == $positions[5] && $positions[2] == $positions[8])
        return true
    elsif($positions[0] == $positions[4] && $positions[0] == $positions[8])
        return true
    elsif($positions[6] == $positions[4] && $positions[6] == $positions[2])
        return true
    end
end
