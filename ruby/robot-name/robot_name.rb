class Robot
  attr_reader :name
  def initialize
    @name = generate_name
  end

  def reset
    @name = generate_name
  end

  private
    def generate_name
      "#{bigletters[rand(bigletters.length)]}"*2 + "#{rand(10)}"*3
    end

    def bigletters
      ('A'..'Z').to_a
    end
end
