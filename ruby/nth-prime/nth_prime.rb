module BookKeeping
  VERSION = 1
end
class Prime
  def self.nth(num)
    if num == 0
      raise(ArgumentError)
    else
      start, prime_no, flag = 2, '', false
      loop do
        flag = self.prime?(start)
        if flag
         prime_no = start
          num -= 1
        end
        start = start.next
        break if num < 1
      end
      prime_no.to_i
    end
  end

  private
  def self.prime?(num)
    (2..(num/2).floor).each do |i|
      return false if num % i == 0
    end
    true
  end
end
