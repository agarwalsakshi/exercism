module BookKeeping
  VERSION = 3
end
class Squares
  def initialize(number)
    @number = number
  end
  def square_of_sum()
    sum = 0;
    i = 1;
    while(i<=@number)
      sum = sum +i
      i+=1
    end
    sum * sum
  end
  def sum_of_squares()
    sum = 0
    i =1
    while (i<=@number)
      sum = sum + i*i
      i+=1
    end
    sum
  end
  def difference()
    (square_of_sum() - sum_of_squares())
  end
end
