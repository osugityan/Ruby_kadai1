require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"
puts "1か2を入力してください。"
  memo_type = gets.to_s.chomp
  
  if memo_type == "1"
    puts "新規でメモを作成します。拡張子を覗いたファイル名を入力してください。"
    file_name = gets.chomp
    
    puts "メモの内容を記入してください。Ctrl+Dで保存します。"
    memo = $stdin.read.split(/R/)
    
    CSV.open("#{file_name}.csv", "w") do |csv|
      csv.puts memo
    end
    
  elsif memo_type == "2"
    puts "既存のメモを編集します。拡張子を除いた既存ファイル名を入力してください"
    file_name = gets.chomp
    
    puts "編集内容を記入してください。 Ctrl+Dで保存します。"
     memo = $stdin.read.split(/R/)
    
    CSV.open("#{file_name}.csv", "a") do |csv|
      csv.puts memo
    end
  end




