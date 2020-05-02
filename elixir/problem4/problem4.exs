defmodule Palindrome do
	def is_palindrome(x) do
		str = Integer.to_string(x)
		reverse = String.reverse(str)
		str === reverse
	end
end

IO.inspect(Palindrome.is_palindrome(122))