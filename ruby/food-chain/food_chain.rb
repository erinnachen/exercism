class FoodChain
  VERSION = 2

  def self.song
    animals_swallowed.map.with_index do |(animal, description), ind|
      generate_verse(ind)
    end.join("\n")
  end

  def self.animals_swallowed
    [["fly",""],
     ["spider", "It wriggled and jiggled and tickled inside her."],
     ["bird", "How absurd to swallow a bird!"],
     ["cat", "Imagine that, to swallow a cat!"],
     ["dog", "What a hog, to swallow a dog!"],
     ["goat", "Just opened her throat and swallowed a goat!"],
     ["cow","I don't know how she swallowed a cow!"],
     ["horse","She's dead, of course!"]]
  end

  def self.generate_verse(index)
    animal = animals_swallowed[index][0]
    description = animals_swallowed[index][1]
    verse = "I know an old lady who swallowed a #{animal}.\n"
    verse += "#{description}\n" unless animal == "fly"
    return verse if animal == "horse"
    verse += recurse_animals(index)
    verse += "I don't know why she swallowed the fly. Perhaps she'll die.\n"
  end

  def self.recurse_animals(index)
    animal = animals_swallowed[index][0]
    verse = ''
    return verse if animal == "fly"
    return "She swallowed the #{animal} to catch the spider that wriggled and jiggled and tickled inside her.\n"+recurse_animals(index-1) if animal == "bird"
    "She swallowed the #{animal} to catch the #{animals_swallowed[index-1][0]}.\n"+recurse_animals(index-1)
  end
end
