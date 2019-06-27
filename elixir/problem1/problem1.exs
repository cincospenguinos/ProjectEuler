range = 1..(1000 - 1)
result = Enum.sum(Enum.filter(range, fn x -> rem(x, 3) === 0 or rem(x, 5) === 0 end))
IO.inspect result