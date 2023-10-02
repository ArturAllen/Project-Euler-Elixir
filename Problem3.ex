defmodule Problem3 do

  def solve(n), do: solve(n, 2, 1)

  defp solve(n, d, lp) when d > n, do: lp
  defp solve(n, d, _lp) when rem(n, d) == 0, do: solve(div(n, d), d, d)
  defp solve(n, d, lp), do: solve(n, d+1, lp)

end

large_n = 600_851_475_143

large_n
|> Problem3.solve
|> IO.puts

# Prints 6857
