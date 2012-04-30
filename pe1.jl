function problem1()
    s = 0
    for i=1:999
        if i % 3 == 0 || i % 5 == 0
            s += i
        end
    end
    return s
end

println(problem1())
