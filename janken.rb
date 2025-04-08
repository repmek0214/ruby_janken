puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"

value = ["グー", "チョキ", "パー"]
secondGameValue = ["上", "下", "右", "左"]
statusWin = "自分の勝ち"
statusLose = "相手の勝ち"

def play_second_game(status, secondGameValue)
    puts "あっちむいて〜"
    puts "0(上)1(下)2(右)3(左)"
    
  
    select_secondGameValue = gets.to_i
    random_secondGameValue = secondGameValue.sample
  
    if (select_secondGameValue == 0) ||
       (select_secondGameValue == 1) || 
       (select_secondGameValue == 2) || 
       (select_secondGameValue == 3)
      puts "ホイ！"
      puts "--------"
      puts "あなた：" + secondGameValue[select_secondGameValue]
      puts "相手：#{random_secondGameValue}"
      if select_secondGameValue == secondGameValue.index(random_secondGameValue)
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
  elsif select_value.between?(0, 2)
    puts "ホイ！"
    puts "--------"
    puts "あなたは" + value[select_value] + "を出しました。"
    puts "相手は #{random_value} を出しました。"

    if select_value == value.index(random_value)
      puts "あいこで....."
    elsif (select_value == 0 && value.index(random_value) == 1) || 
          (select_value == 1 && value.index(random_value) == 2) ||
          (select_value == 2 && value.index(random_value) == 0)
      play_second_game(statusWin, secondGameValue)
    else
      play_second_game(statusLose, secondGameValue)
    end
  else
    puts "無効な入力です。もう一度試してください。"
  end
end