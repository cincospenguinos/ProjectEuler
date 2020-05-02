defmodule Primality do
	def is_prime(2), do: true
	def is_prime(3), do: true
	def is_prime(x) do
		range = 2..x
		Enum.map(range, fn num -> rem(x, num) end)
			|> Enum.count(fn num -> num === 0 end) === 1
	end
end

IO.inspect Primality.is_prime(600)