class Raindrops
  VERSION = 1

  def self.convert(n)
    raindrop = ""
    raindrop += "Pling" if n % 3 == 0
    raindrop += "Plang" if n % 5 == 0
    raindrop += "Plong" if n % 7 == 0
    raindrop = n.to_s if raindrop.empty?
    raindrop
  end
end
