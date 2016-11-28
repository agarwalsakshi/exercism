module BookKeeping
  VERSION = 2
end

class Robot
    @naming_histories = []

    class << self
      attr_accessor :naming_histories
    end

    def name
      @my_name ||= give_me_a_new_name
    end

    def reset
      @my_name = nil
    end

    private

    def give_me_a_new_name
      begin
        alphabet = [*('A'..'Z')]
        digit = [*("0".."9")]
        new_name = (alphabet.sample(2) + digit.sample(3)).join
      end until Robot.naming_histories.include?(new_name) == false
      Robot.naming_histories << new_name
      new_name
    end
end
