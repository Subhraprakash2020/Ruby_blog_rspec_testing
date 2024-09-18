def fibonacci(n)
  return [] if n <= 0
  return [0] if n == 1
  return [0, 1] if n == 2

  sequence = [0, 1]
  (n - 2).times do
    sequence << sequence[-1] + sequence[-2]
  end
  sequence
end
