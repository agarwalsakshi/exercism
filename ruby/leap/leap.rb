module BookKeeping
  VERSION =2
end

class Year
  def self.leap?(year)
    if year % 400 == 0
        true
    elsif year % 100 == 0
        false
    elsif year % 4 == 0
        true
    else
        false
    end
    # if (year % 4 == 0)
    #   if(year % 100 == 0)
    #     if(year % 400 == 0)
    #       "Expected 'true', #{year} is a leap year."
    #     else
    #       "Expected 'false', #{year} is not a leap year."
    #     end
    #   else
    #     "Expected 'true', #{year} is a leap year."
    #   end
    # else
    #   "Expected 'false', #{year} is not a leap year."
    # end
  end
end
