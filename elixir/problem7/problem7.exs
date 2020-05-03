Code.compile_file("primality.exs", "../util")

defmodule FindPrimality do
	def prime_no(1), do: 2
	def prime_no(nth) do
		previous = prime_no(nth - 1)
		range = (previous + 1)..(previous * 2)
		Enum.filter(range, fn value -> Primality.is_prime(value) end) |> Enum.min
	end
end

FindPrimality.prime_no(1000)
	|> IO.inspect