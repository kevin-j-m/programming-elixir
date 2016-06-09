defmodule MyEnum do
  def all?([], _), do: true

  def all?([head | tail], function) do
    if function.(head) do
      all?(tail, function)
    else
      false
    end
  end

  def each([], _), do: []
  def each([head | tail], function) do
    [function.(head) | each(tail, function)]
  end

  def filter([], _), do: []
  def filter([head | tail], function) do
    if function.(head) do
      [head] ++ filter(tail, function)
    else
      filter(tail, function)
    end
  end

  def split([head | tail], n) do

  end

  def take([head | tail], n) do

  end

  def flatten([]), do: []
  def flatten([head | tail]) do
    flatten(head) ++ flatten(tail)
  end
  def flatten(element) do
    [element]
  end
end
