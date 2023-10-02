defmodule Problem9 do

  def solve(trip_sum) when rem(trip_sum, 2) > 0, do: {:error, 0}
  def solve(trip_sum), do: solve(div(trip_sum, 2), 1)

  defp solve(lim, m) when m > lim, do: {:error, 0}
  defp solve(lim, m) when rem(lim, m) > 0, do: solve(lim, m+1)

  defp solve(lim, m) do

    n = div(lim, m) - m

    if n < m and n > 0, do: {:ok, {(m*m-n*n), (2*m*n), (m*m+n*n)}},
    else: solve(lim, m+1)

  end

end

case Problem9.solve(1000) do
  {:error, _} -> IO.puts("Could not find a triplet")
  {:ok, {a, b, c}}    -> IO.puts("The product of the triplet is #{a*b*c}")
end

# Prints The product of the triplet is 31875000
