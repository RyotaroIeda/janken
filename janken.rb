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

def point_two #じゃんけん負けた場合
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

 def janken #じゃんけん
    puts "じゃんけん"
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    
    player_hand = gets.chomp.to_i
    program_hand = rand(3)
    jankens = ["グー","チョキ","パー"]
    
    puts "ホイ"
    puts "--------------------"
    puts "あなた：#{jankens[player_hand]}を出しました"
    puts "相手：#{jankens[program_hand]}を出しました"
    puts "--------------------"
    
    if player_hand == program_hand
     puts "じゃんけん"
     puts "0(グー)1(チョキ)2(パー)3(戦わない)"
     janken
    elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
     point_one #あっち向いてホイ（勝ち）
    elsif (player_hand == 0 && program_hand == 2) || (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1)
     point_two #あっち向いてホイ（負け）
    else
     puts "試合終了です"
    end
 end
 
 janken #アプリスタート
