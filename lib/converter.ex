defmodule Converter do
  def rounded_to_nearest_tenth(val) do
    Float.ceil val, 1
  end

  def to_km(val) do
    val/1000
  end

  def to_light_seconds({:meters, meters}) do
    (meters * 3.335638620368e-9) |> round_down
  end

  def round_down(val) when is_float(val) do
    val
    |> trunc
  end
end
