module BookKeeping
  VERSION = 2
end
class Fixnum
  ROMAN_NUM = {
    1000 => "M",
     900 => "CM",
     500 => "D",
     400 => "CD",
     100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
       9 => "IX",
       5 => "V",
       4 => "IV",
       1 => "I"
    }
  # REV_HASH = Hash[ROMAN.to_a.reverse]

  def to_roman
    num = self
    ROMAN_NUM.map do |arab, rome|
      div = num/arab
      num = num % arab
      rome * div
    end.join('')
  end
end
