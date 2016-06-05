defmodule MyList do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def mapsum([head | tail], func), do: _mapsum([head | tail], func, 0)

  defp _mapsum([], _func, sum), do: sum
  defp _mapsum([head | tail], func, sum) do
    _mapsum(tail, func, sum + func.(head))
  end

  def max([head | tail]), do: _max([head | tail], 0)

  defp _max([], max), do: max
  defp _max([head | tail], current_max) when current_max > head do
    _max(tail, current_max)
  end
  defp _max([head | tail], _current_max), do: _max(tail, head)
end
