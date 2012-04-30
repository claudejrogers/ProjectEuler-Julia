function mark(sieve::Array{Bool}, x::Int64, SIZE::Int64)
    for i=(x+x):x:SIZE
        sieve[i] = false
    end
end

function primes(SIZE::Int64)
    sieve = trues(SIZE)
    for x=2:int(sqrt(SIZE))
        if sieve[x]
            mark(sieve, x, SIZE)
        end
    end
    p = Array(Int64, 0)
    for i=2:SIZE
        if sieve[i]
            append!(p, [i])
        end
    end
    return p
end

function problem3(num::Int64)
    p = primes(int(sqrt(num)))
    reverse!(p)
    for x=p
        if num % x == 0
            return x
        end
    end
end

prime = problem3(600851475143)
println(prime)
