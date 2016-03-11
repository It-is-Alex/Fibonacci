def recursive_fib(n)
  if n < 2
    return n
  else
    return (recursive_fib(n-1) + recursive_fib(n-2))
  end
end

def iterative_fib(n)
fib = [0,1]

  n.times do
    last_number = fib.count - 1
    second_to_last = fib.count - 2
    fib << fib[last_number] + fib[second_to_last]
  end

  return fib[n]
end

puts recursive_fib(9)
iterative_fib(6)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
