class Clock
  VERSION = 1
  def initialize(hour, minute)
    @time = Time.new(2000, 1, 1, hour, minute, 0)
  end

  def self.at(hour, minute)
    hour, minute = parse_hour_minutes(hour, minute)
    Clock.new(hour, minute)
  end

  def to_s
    @time.strftime("%H:%M")
  end

  def +(minutes)
    new_time = @time+60*minutes
    Clock.new(new_time.hour, new_time.min)
  end

  def ==(clock2)
    to_s == clock2.to_s
  end

  private

    def self.parse_hour_minutes(hour, minute)
      hour += minute / 60
      hour %= 24
      minute %= 60
      [hour, minute]
    end
end
