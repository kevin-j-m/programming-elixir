defmodule MyList do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def mapsum([head | tail], func), do: _mapsum([head | tail], func, 0)

  defp _mapsum([], _func, sum), do: sum
  defp _mapsum([head | tail], func, sum) do
    _mapsum(tail, func, sum + func.(head))
  end

  def max([]), do: nil
  def max([head | tail]), do: _max(head, tail)

  defp _max(max, []), do: max
  defp _max(max, [head | tail]) when max > head do
    _max(max, tail)
  end
  defp _max(_max, [head | tail]), do: _max(head, tail)
end
