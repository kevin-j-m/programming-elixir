defmodule Chop do
  def guess(n, a..b) when n in a..b do
    guess = div(b - a, 2) + a

    IO.puts "Is it #{guess}"

    check(n, guess, a..b)
  end

  defp check(actual, guess, _low.._high)
    when actual == guess,
    do: IO.puts "#{actual}"

  defp check(actual, guess, _low..high)
    when actual > guess,
    do: guess(actual, (guess + 1)..high)

  defp check(actual, guess, low.._high)
    when actual < guess,
    do: guess(actual, low..(guess - 1))
end
