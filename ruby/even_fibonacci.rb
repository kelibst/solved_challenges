#!/bin/ruby


t = 1
for a0 in (0..t)
    n = 100
    
    fib = [1,2]
    x = 0
    while fib[x] <= n
        fib << (fib[x]+ fib[x+1])
        x+=1
    end
    print fib
    even_fib= fib.select do |num|
        num.even? && num < n
    end
    
    puts even_fib.reduce(:+)
end

