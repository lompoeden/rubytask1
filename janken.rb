class Player
  def hand
    # 「プレイヤーに 0 ~ 2を入力させる文章」を表示させます。
    puts " Please choose an option "
    puts "0:Goo, 1:choki, 2:Par"
    input_hand = gets.to_i


    k=0
      while k == 0 do

        if  input_hand == 0 || input_hand == 1 || input_hand == 2
        k = 1
        puts " your choice is #{input_hand}"
        else
          k=0
          puts " Incorrect entry , Please try again"
          puts "0:Goo, 1:choki, 2:Par"
          input_hand = gets.to_i

        end

     end
     return input_hand
  end

end

class Enemy
  def hand
    enemy_hand = rand(0..2)
    return enemy_hand
  end

end

class Janken
  attr_accessor :input_hand, :enemy_hand 
  def pon(player_hand, enemy_hand)

    #janken = ["Goo", "choki", "Par"]
    puts "Your choice is #{input_hand} 。"
    puts "Your enemy chose #{enemy_hand} 。"

      if input_hand == enemy_hand
         puts "play again"
         return true

      elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
         puts "You Won!"
         return false


     else
        puts " You Lost , Shit !"
        return false
     end
 end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

next_game=true

while next_game

  next_game = janken.pon(player.hand, enemy.hand)

end
