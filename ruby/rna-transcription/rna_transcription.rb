module BookKeeping
  VERSION = 4
end
class Complement
  def self.of_dna(name)
    i = 0
    stringLength = name.length
    while(i<name.length)
      if(name[i] == 'G')
        name[i] = "C"
      elsif(name[i] == 'C')
        name[i] = "G"
      elsif(name[i] == 'T')
        name[i] = "A"
      elsif(name[i] == 'A')
        name[i] = "U"
      else
        name[i] = ""
      end
      i+=1;
    end
    if(name.length == stringLength)
      name
    else
      ""
    end
  end
end
# Complement.new.of_dna("A")
# Complement.new.of_dna("D")
# Complement.new.of_dna("ASDFG")
