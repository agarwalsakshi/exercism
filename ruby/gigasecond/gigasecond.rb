module BookKeeping
  VERSION = 5
end

  class Gigasecond
  def self.from(time)
    time+ 10 ** 9
  end
end

# Gigasecond.from(Time.utc(2011, 4, 25, 0, 0, 0))
