defmodule Multiples do
	def three_or_five(x) do
		rem(x, 3) === 0 or rem(x, 5) === 0
	end
end

range = 1..(1000 - 1)
is_multiple = fn x -> Multiples.three_or_five(x) end
Enum.filter(range, is_multiple)
	|> Enum.sum
	|> IO.inspect
