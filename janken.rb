puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"

value = ["グー", "チョキ", "パー"]
second_game_value = ["上", "下", "右", "左"]
status_win = "自分の勝ち"
status_lose = "相手の勝ち"

def play_second_game(status, second_game_value)
    puts "あっちむいて〜"
    puts "0(上)1(下)2(右)3(左)" 
    select_second_game_value = gets.to_i
    random_second_game_value = second_game_value.sample
  
    if (select_second_game_value == 0) ||
       (select_second_game_value == 1) || 
       (select_second_game_value == 2) || 
       (select_second_game_value == 3)
      puts "ホイ！"
      puts "--------"
      puts "あなた：" + second_game_value[select_second_game_value]
      puts "相手：#{random_second_game_value}"
        
      if select_second_game_value == second_game_value.index(random_second_game_value)
        puts status
      end
    else
      puts "無効な入力です。もう一度試してください。"
    end
  end

loop do
  select_value = gets.to_i
  random_value = value.sample

  if select_value == 3
    puts "ゲームを終了します。"
    break
  elsif (select_value == 0) || 
        (select_value == 1) ||
        (select_value == 2)
    puts "ホイ！"
    puts "--------"
    puts "あなたは" + value[select_value] + "を出しました。"
    puts "相手は #{random_value} を出しました。"

    if select_value == value.index(random_value)
      puts "あいこで....."
    elsif (select_value == 0 && value.index(random_value) == 1) || 
          (select_value == 1 && value.index(random_value) == 2) ||
          (select_value == 2 && value.index(random_value) == 0)
      play_second_game(status_win, second_game_value)
    else
      play_second_game(status_lose, second_game_value)
    end
  else
    puts "無効な入力です。もう一度試してください。"
  end
end
