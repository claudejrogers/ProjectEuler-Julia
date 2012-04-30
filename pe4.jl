function problem4()
    MAX = 0
    for i=100:999
        for j=100:999
            pal = i * j
            spal = string(pal)
            if spal == reverse(spal)
                if MAX < pal
                    MAX = pal
                end
            end
        end
    end
    return MAX
end

println(problem4())
