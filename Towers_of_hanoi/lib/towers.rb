class Towers
  attr_reader:towers
  def initialize
    @towers = [[3,2,1],[],[]]
  end
  
  def move
    until won?
      puts "which disc you want to move from"
      from = get.chomp
      puts "where do you want to put"
      to =gets.chomp
      x  = @towers[from].pop
      @towers[to].push(x)
      
    end
  end
  
  def won?
    @towers[-1] == [3,2,1] || @towers[1] == [3,2,1]
  end
end