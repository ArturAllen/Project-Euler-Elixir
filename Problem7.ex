defmodule Problem7 do

  def prime?(n) when n <= 1, do: false
  def prime?(2), do: true
  def prime?(n), do: prime?(n, 2)

  defp prime?(n, cand_div) when cand_div*cand_div > n, do: true
  defp prime?(n, cand_div) when rem(n, cand_div) == 0, do: false
  defp prime?(n, cand_div), do: prime?(n, cand_div+1)

  def solve(n), do: solve(n, 1, 2, 3)

  defp solve(lim, count, prime, _cand) when count >= lim, do: prime
  defp solve(lim, count, prime, cand) do

    if prime?(cand), do: solve(lim, count+1, cand, cand+2),
    else: solve(lim, count, prime, cand+2)

  end

end

Problem7.solve(10001)
|> IO.puts

# Prints 104743
