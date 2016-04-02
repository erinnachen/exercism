defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
    Regex.replace(~r/[^\p{L}0-9-]/u, sentence," ")
    |> String.split
    |> Enum.group_by(&String.downcase/1)
    |> Map.new(fn {k, v} -> {k, length v} end)
  end
end
