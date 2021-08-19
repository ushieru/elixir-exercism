defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    clean_sentence = sentence
      |> String.split
      |> Enum.map(fn w -> String.split(w, "_") end)
      |> List.flatten
      |> Enum.map(&only_letters_screenplay_or_numbers/1)
      |> Enum.filter(fn r -> String.length(r) > 0 end)
      |> Enum.map(&String.downcase/1)
      |> Enum.join(" ")

    String.split(clean_sentence, " ")
      |> Enum.map(fn w -> find_word_in_sentence(w, clean_sentence) end)
      |> Enum.map(fn w -> {hd(w), length(w)} end)
      |> Map.new
  end

  def only_letters_screenplay_or_numbers(list), do:
  String.split(list, "")
  |> Enum.filter(fn w -> String.match?(w, ~r/^\p{L}$/u) or w == "-" or String.match?(w, ~r/^\p{Nd}$/u) end)
  |> Enum.join

  def find_word_in_sentence(word, sentence), do:
    String.split(sentence, " ")
    |> Enum.filter(fn w -> w == word end)
end
