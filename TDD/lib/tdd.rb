class Array
  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    result
  end

  
  def two_sum
    result = []
    self.each_with_index do |el, idx1|
      (idx1 + 1..self.length-1).each do |idx2|
        result << [idx1, idx2] if el + self[idx2] == 0
      end
    end
    
    result
  end    
end

def my_transpose(array)
  result = Array.new(array.length) {[]}
  array.each_with_index do |row,row_idx|
  row.each_with_index do |col,col_idx|
    result[col_idx][row_idx] = col
  end
end
  result    
end

def more_profit_days(arr)
  result = [arr[0], arr[1]]
  
  arr.each_with_index do |el, idx1|
    (idx1+1..arr.length-1).each do |idx2|
      x = arr[idx2] - el
      if x > result[-1] - result[0]
        result = [el, arr[idx2]]
      end
    end
  end
  
  result
end