janken_hands = ["グー","チョキ","パー"]
finger_direction = ["上","下","右","左"]

while true do
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  
  player_hand = gets.to_i
  computer_hand = rand(3)
  
  if player_hand == 3
    puts "---------------"
    puts "終了します"
    puts "---------------"
    break
  end
  
  if player_hand != 3
    puts "ホイ！"
    puts "---------------"
    puts "あなた#{janken_hands[player_hand]}を出しました"
    puts "相手#{janken_hands[computer_hand]}を出しました"
    puts "---------------"
  end
    
  while player_hand == computer_hand do
    puts "あいこで..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    
    player_hand = gets.to_i
    computer_hand = rand(3)
  
    puts "ショ！"
    puts "---------------"
    puts "あなた#{janken_hands[player_hand]}を出しました"
    puts "相手#{janken_hands[computer_hand]}を出しました"
    puts "---------------"
  end
  
  if player_hand == 0 && computer_hand == 1 || player_hand == 1 && computer_hand == 2 || player_hand == 2 && computer_hand == 0
    player_win = true
  else
    player_win = false
  end
  
  puts "あっち向いて〜"
  puts "0(上)1(下)2(右)3(左)"
  player_choice = gets.to_i
  computer_choice = rand(4)
  puts "ホイ"
  puts "---------------"
  puts "あなた#{finger_direction[player_choice]}を出しました"
  puts "相手#{finger_direction[computer_choice]}を出しました"
  
  if player_win && player_choice == computer_choice
    puts "---------------"
    puts "あなたの勝ちです！"
    puts "---------------"
    break
  elsif !player_win && player_choice == computer_choice
    puts "---------------"
    puts "あなたの負けです..."
    puts "---------------"
    break
  else
    puts "---------------"
    puts "もう一回！"
    puts "---------------"
  end
end
