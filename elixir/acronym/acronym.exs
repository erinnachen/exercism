defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(string) :: String.t()
  def abbreviate(string) do
    Regex.scan(~r/[A-Z]|(?<=\s)[a-z]/, string)
    |> List.flatten
    |> Enum.map(&String.upcase/1)
    |> Enum.join
  end
end
