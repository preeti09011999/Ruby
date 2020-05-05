def fibonacci(num)
    i = 0
    j = 1
    for k in (1..num)
        if(i<num)
            print(i.to_s + " ")
        sum = i + j
        i = j
        j = sum
        end
        
    end
end

fibonacci(11)
