function problem7(num::Int64)
    np = 2
    p = 3
    found = false
    while np < num
        p += 2
        for i=2:int(sqrt(p))
            if p%i == 0
                found = true
                break
            end
        end
        if !found
            np += 1
        else
            found = false
        end
    end
    return p
end

println(problem7(10001))
