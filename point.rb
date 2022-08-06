require "./janken"

def point_one #じゃんけん勝った場合
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  
  player_hand = gets.chomp.to_i
  program_face = rand(4)
  
  points = ["上","下","左","右"]
  
  puts "ホイ"
  puts "--------------------"
  puts "あなた：#{points[player_hand]}"
  puts "相手：#{points[program_face]}"
  puts "--------------------"
  
  if player_hand == program_face
    puts "あなたの勝ちです"
  else
    janken
  end
end


def point_two
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  
  player_face = gets.chomp.to_i
  program_hand = rand(4)
  
  points = ["上","下","左","右"]
  
  puts "ホイ"
  puts "--------------------"
  puts "あなた：#{points[player_face]}"
  puts "相手：#{points[program_hand]}"
  puts "--------------------"
  
  if player_face == program_hand
    puts "あなたの負けです"
  else
    janken
  end
end

