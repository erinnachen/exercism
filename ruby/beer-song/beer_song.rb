class BeerSong
  VERSION = 2

  def verse(nstart, nend = nstart)
    n = nstart
    "#{bottles(n).capitalize} of beer on the wall, "\
    "#{bottles(n)} of beer.\n" \
    "#{action(n)}"\
    "#{bottles(n-1)} of beer on the wall.\n"
  end

  def bottles(n)
    return "1 bottle" if n == 1
    return "no more bottles" if n == 0
    return "99 bottles" if n < 0
    "#{n} bottles"
  end

  def describe(n)
    return "it" if n == 1
    "one"
  end

  def action(n)
    return "Go to the store and buy some more, " if n == 0
    "Take #{describe(n)} down and pass it around, "
  end

  def verses(nstart, nend = nstart)
    nstart.downto(nend).map do |n|
      verse(n)
    end.join("\n")
  end

  def lyrics
    verses(99,0)
  end
end
