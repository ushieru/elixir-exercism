defmodule Lasagna do
  @lasagna_time 40
  @minutes_layer 2
  # TODO: define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven(), do: @lasagna_time

  # TODO: define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(minutes), do: @lasagna_time - minutes

  # TODO: define the 'preparation_time_in_minutes/1' function
  def preparation_time_in_minutes(layers), do: @minutes_layer * layers
  
  # TODO: define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(layers, minutes), do: @minutes_layer * layers + minutes 

  # TODO: define the 'alarm/0' function
  def alarm(), do: "Ding!"
end
