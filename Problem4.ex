defmodule Problem4 do

  def rev_int(n), do: rev_int(n, 0)
  defp rev_int(0, acc), do: acc
  defp rev_int(n, acc), do: rev_int(div(n, 10), 10*acc + rem(n, 10))

  def palindrome?(n), do: n === rev_int(n)

  def solve(n) do
    inf = 10**(n-1)
    sup = 10**n - 1
    (for i <- inf..sup, j <- i..sup, palindrome?(i*j), do: i*j)
    |> Enum.max
  end

end

Problem4.solve(3)
|> IO.puts

# Prints 906609
