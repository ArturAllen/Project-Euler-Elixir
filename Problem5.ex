defmodule Problem5 do

  def solve(n), do: solve(n+1,n)
  defp solve(cand, lim) do
    if Enum.all?(2..lim, fn x -> rem(cand, x) == 0 end) do
      cand
    else
      solve(cand+1, lim)
    end
  end

  def better_solve(n), do: better_solve(n, Enum.to_list(2..n), 2, 1)

  defp better_solve(lim, _l, cand, acc) when cand > lim, do: acc

  defp better_solve(lim, l, cand, acc) do
    r = Enum.map(l, fn x -> if rem(x, cand) == 0, do: div(x, cand), else: x end)

    if r == l, do: better_solve(lim, l, cand+1, acc),
    else: better_solve(lim, r, cand, acc*cand)
  end

end

# Problem5.solve(20) |> IO.puts

# Prints 232_792_560
# Slow :')

Problem5.better_solve(20) |> IO.puts

#prints 232_792_560
# Fast :)
