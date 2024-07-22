def longest_common_subsequence(word1,word2)
  cell=[]
  word1.length.times { cell << [0] * word2.length}  

  (0...word1.length).each do |i|
    (0...word2.length).each do |j|
      if word1[i] == word2[j]
        cell[i][j] = cell[i-1][j-1] + 1
      else
        cell[i][j] = [cell[i-1][j], cell[i][j-1]].max
      end
    end
  end

  cell.flatten.max

  
end

puts longest_common_subsequence("FISH","FOSH")
