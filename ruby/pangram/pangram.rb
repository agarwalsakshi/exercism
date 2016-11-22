class Pangram
  def self.is_pangram?(str)
    str.downcase!
    ("a".."z").each do |letter|
      return false unless str.index(letter)
    end
    true
  end
end

module BookKeeping
  VERSION = 2
end
