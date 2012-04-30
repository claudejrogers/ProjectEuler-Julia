square(x) = x * x

function problem6(num::Int64)
    nums = [i | i=1:num]
    return square(sum(nums)) - sum(map(square, nums))
end

println(problem6(100))
