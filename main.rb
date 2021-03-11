def gamestart
  puts "あっち向いてホイをやりましょう"
  puts "じゃんけん・・・"
end

def janken
  jankens = ["グー", "チョキ", "パー"]
  puts "---------------"
  puts "あなたの出す手を選んでください\n[0]グー、[1]チョキ、[2]パー"
  player_hand = gets.to_i
  if jankens[player_hand].nil?
    puts "0から2の数字を入力してください"
    janken()
  end
  puts "---------------"
  p "あなたが選択した番号：#{player_hand}"
  p "あなたの手は#{jankens[player_hand]}です。"

  program_hand = rand(3)
  p "相手の手は#{jankens[program_hand]}です。"
  puts "---------------"

  if player_hand == program_hand then
    puts "あいこで・・・"
    janken()
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "じゃんけんで勝ちました！"
    # 勝利の場合引数1を渡す
    turn(1)
  else
    puts "じゃんけんで負けました！"
    # 敗北の場合引数2を渡す
    turn(2)
  end
end

def turn(jankenend)
  puts "あっち向いて・・・"
  puts "------------"
  directions = ["上", "下", "左", "右"]
    # じゃんけん勝利（1）の場合
    if jankenend == 1 
      puts "指す方向を選んでください\n[0]上、[1]下、[2]左、[3]右"
      # じゃんけん敗北（2）の場合
    else
      puts "向く方向を選んでください\n[0]上、[1]下、[2]左、[3]右"
    end
  player_direction = gets.to_i
    if directions[player_direction].nil?
      puts "0から3の数字を入力してください"
      turn(jankenend)
    end
  program_direction = rand(4)
  puts "あなたの選んだ番号：#{player_direction}"
  puts "あなたは#{directions[player_direction]}を向きました"
  puts "相手の選んだ方向は#{directions[program_direction]}です"
    
    if (jankenend == 1) && (player_direction == program_direction)
      puts "あなたの勝ちです！！"
    elsif (jankenend == 1) && (player_direction != program_direction)
      puts "残念！じゃんけんに戻ります\nじゃんけん・・・"
      janken()
    elsif (jankenend != 1) && (player_direction == program_direction)
      puts "あなたの負けです！！"
    else
      puts "セーフ！じゃんけんに戻ります\nじゃんけん・・・"
      janken()
    end
end
  
gamestart()
janken()

  
  
  

