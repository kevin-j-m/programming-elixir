defmodule MyList do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def mapsum([head | tail], func), do: _mapsum([head | tail], func, 0)

  defp _mapsum([], _func, sum), do: sum
  defp _mapsum([head | tail], func, sum) do
    _mapsum(tail, func, sum + func.(head))
  end
end
