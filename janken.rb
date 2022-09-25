puts "じゃんけん..."

def janken
 puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"

 player_hand = gets.to_i
 program_hand = rand(3)

 jankens = ["グー","チョキ","パー"]

 puts "ホイ！"
 puts "-----------------------------------"
 puts "あなた：#{jankens[player_hand]}を出しました"
 puts "相手：#{jankens[program_hand]}を出しました"

 if player_hand == 3
   puts "じゃんけんを終了します"

 elsif player_hand == program_hand
   puts "あいこで..."
   janken()

 elsif player_hand == 0 && program_hand == 1 || player_hand == 1 && program_hand == 2 || player_hand == 2 && program_hand == 0
   puts "勝ち！あっちむいて..."
   acchimuite(1)
   
 else
   puts "負け！あっちむいて..."
   acchimuite(2)
   
 end
end

def acchimuite(janken_result)
  puts "0(上) 1(下) 2(左) 3(右)"
  
  player_direction = gets.to_i
  program_direction = rand(3)
  
  acchimuite = ["上","下","左","右"]
  
  puts "ホイ！"
  puts "-----------------------------------"
  puts "あなた：#{acchimuite[player_direction]}"
  puts "相手：#{acchimuite[program_direction]}"
  
  if player_direction == program_direction && janken_result == 1
    puts "あなたの勝ちです！"
  
  elsif player_direction == program_direction && janken_result == 2
    puts "あなたの負けです"
    
  else
    puts "じゃんけん..."
    janken()
  
  end
end

janken()

