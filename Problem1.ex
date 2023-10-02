for i <- 3..1000, rem(i, 3) == 0 || rem(i, 5) == 0 do i end
|> Enum.sum
|> IO.puts
