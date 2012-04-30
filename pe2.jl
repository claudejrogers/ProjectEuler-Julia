macro assert(ex)
    :($ex ? nothing : error("Assertion failed: ", $string(ex)))
end

function problem2()
    (a, b) = (1, 2)
    s = 2
    while b < 4e6
        (a, b) = (b, a+b)
        if b % 2 == 0
            s += b
        end
    end
    return s
end

ans = problem2()

println(ans)

@assert(ans == 4613732)
