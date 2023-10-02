defmodule Problem10 do

  def prime?(n) when n < 2, do: false
  def prime?(n), do: prime?(n, 2)

  defp prime?(n, cand) when cand*cand > n, do: true
  defp prime?(n, cand) when rem(n, cand) == 0, do: false
  defp prime?(n, cand), do: prime?(n, cand+1)

  def solve(n) when n <= 2, do: 0
  def solve(n) do
    (for i <- 2..(n-1), prime?(i), do: i)
    |> Enum.sum
  end

end

Problem10.solve(2_000_000)
|> IO.puts
