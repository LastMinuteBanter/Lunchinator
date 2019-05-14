def main
  file_count = 0
  compared_arr = ["filler","T","T","T","T"]
  file_names = ["choice1.txt","choice2.txt","choice3.txt","choice4.txt","choice5.txt","choice6.txt","choice7.txt","choice8.txt","choice9.txt","choice10.txt","choice11.txt","choice12.txt","choice13.txt","choice14.txt","choice15.txt","choice16.txt",]
  match = 0
  row = Array.new(5)

  while match!=4

    comparefile = File.new(file_names[file_count],"r")
    read_file_lines = IO.readlines(comparefile)

    for a in 0..5
      row[a] = read_file_lines[a]
    end

    puts(row)
    comparefile.close()

    for b in 1..5
      if row[b]==compared_arr[b]
        match+=1
      end
      puts(compared_arr[b])
    end
    puts(match)

    if match == 4
      puts "Success"
    else
      match=0
      file_count+=1
      row.delete_at(0)
      row.delete_at(1)
      row.delete_at(2)
      row.delete_at(3)
      row.delete_at(4)
    end

end

end
main
