def longest_common_substring(word1,word2)
  cell=[]
  word1.length.times { cell << [0] * word2.length}  

  (0...word1.length).each do |i|
    (0...word2.length).each do |j|
      if word1[i] == word2[j]
        cell[i][j] = cell[i-1][j-1] + 1
      else
        cell[i][j] = 0
      end
    end
  end

  cell.flatten.max

  
end

puts longest_common_substring("FISH","HISH")
