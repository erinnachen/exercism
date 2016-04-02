defmodule Bob do
  def hey(input) do
    cond do
      Regex.match?(~r/\A\s*\z/, input) -> "Fine. Be that way!"
      String.ends_with?(input, "?") -> "Sure."
      input == String.upcase(input) && !Regex.match?(~r/\A[\W\d]*\z/, input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end
