defmodule RunLengthEncoder do
  @doc """
  Generates a string where consecutive elements are represented as a data value and count.
  "HORSE" => "1H1O1R1S1E"
  For this example, assume all input are strings, that are all uppercase letters.
  It should also be able to reconstruct the data into its original form.
  "1H1O1R1S1E" => "HORSE"
  """
  @spec encode(String.t) :: String.t
  def encode(string) do
    string
    |> String.codepoints
    |> Enum.reduce("",&process_char(&1,&2))
  end


  @spec decode(String.t) :: String.t
  def decode(string) do
  end

  defp process_char(c, acc) do
    if c == String.last(acc) do
      count = String.at(acc, (String.length(acc)-2)) |> String.to_integer
      substring = String.slice(acc,0,String.length(acc)-2)
      "#{substring}#{count+1}#{c}"
    else
      IO.puts "HERE #{c}: #{acc}"
      "#{acc}1#{String.upcase(c)}"
    end
  end

end
