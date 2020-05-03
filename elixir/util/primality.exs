defmodule Primality do
	@moduledoc """
	Utility functions surrounding primality testing.
	"""

	def is_prime(2), do: true
	def is_prime(3), do: true
	def is_prime(x) do
		limit = round(:math.sqrt(x))
		range = 2..limit
		remainders_of(range, x)
			|> Enum.count(fn remainder -> remainder === 0 end) === 0
	end

	def largest_prime_factor_of(value) do
		limit = round(:math.sqrt(value))
		range = 2..limit
		Enum.filter(range, fn x -> rem(value, x) === 0 end)
			|> Enum.filter(fn x -> is_prime(x) end)
			|> Enum.max
	end

	defp remainders_of(range, dividend) do
		Enum.map(range, fn potential_factor -> rem(dividend, potential_factor) end)
	end
end
