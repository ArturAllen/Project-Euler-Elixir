defmodule Problem6 do

  defp squared_sum(n) do
    sum = div(n*(n+1), 2)
    sum * sum
  end

  defp sum_of_squares(n) do
    div(n * (n+1) * (2*n + 1), 6)
  end

  def solve(n), do: squared_sum(n) - sum_of_squares(n)
end

Problem6.solve(100)
|> IO.puts

# Prints 25164150
