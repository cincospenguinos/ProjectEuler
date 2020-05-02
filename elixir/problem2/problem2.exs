# I stole this module from http://stratus3d.com/blog/2018/08/18/fibonacci-algorithms-in-elixir/
defmodule Fibonacci do
	def fib(0), do: 0
	def fib(1), do: 1
	def fib(n), do: fib(0, 1, n - 2)

	def fib(_, prv, -1), do:  prv
	def fib(prvprv, prv, n) do
		next = prv + prvprv
		fib(prv, next, n - 1)
	end
end

IO.inspect Enum.map(0..50, fn i -> Fibonacci.fib(i) end)
	|> Enum.filter(fn i -> i <= 4000000 end)
	|> Enum.filter(fn i -> rem(i, 2) === 0 end)
	|> Enum.sum