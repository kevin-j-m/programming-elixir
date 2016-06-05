defmodule Chop do
  def guess(n, a..b) when n in a..b do
    diff = b - a
    guess = div(diff, 2) + a

    IO.puts "Is it #{guess}"

    check(n, guess, a..b)
  end

  def check(actual, guess, _low.._high)
    when actual == guess,
    do: IO.puts "#{actual}"

  def check(actual, guess, _low..high)
    when actual > guess,
    do: guess(actual, (guess + 1)..high)

  def check(actual, guess, low.._high)
    when actual < guess,
    do: guess(actual, low..(guess - 1))
end
