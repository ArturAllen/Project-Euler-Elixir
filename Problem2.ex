defmodule Problem2 do


  def solve(a, _b, acc) when a > 4000000, do: acc

  def solve(a, b, acc) when rem(a, 2) == 0 do
      solve(b, a+b, acc+a)
  end

  def solve(a, b, acc) do
      solve(b, a+b, acc)
  end


end

Problem2.solve(1, 1, 0)
|> IO.puts
