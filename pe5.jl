function gcd(a::Int64, b::Int64)
    while b != 0
        (a, b) = (b, a % b)
    end
    return a
end

function lcm(a::Int64, b::Int64)
    return div(a*b,gcd(a, b))
end

function problem5(num::Int64)
    reduce(lcm, 1:num)
end

println(problem5(20))
