require 'prime'
module BookKeeping
  VERSION = 1
end
class Sieve
  def initialize(number)
    @number = number+1
  end
  def primes
    Prime.take_while {
      |p| p < @number}
  end
end
