range = 1..100

sum_of_squares = Enum.map(range, fn x -> :math.pow(x, 2) |> round end)
	|> Enum.sum
square_of_sum = :math.pow(Enum.sum(range), 2) |> round

IO.inspect(square_of_sum - sum_of_squares)