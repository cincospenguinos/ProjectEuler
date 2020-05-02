Code.compile_file("primality.exs", "../util")

IO.inspect Primality.largest_prime_factor_of(600851475143)