defmodule Palindrome do
	def is_palindrome(x) do
		str = Integer.to_string(x)
		reverse = String.reverse(str)
		str === reverse
	end
end

range = 100..999
products = fn val -> Enum.map(range, fn other_val -> val * other_val end) end
Enum.flat_map(range, products)
	|> Enum.uniq
	|> Enum.filter(fn x -> Palindrome.is_palindrome(x) end)
	|> Enum.max
	|> IO.inspect