def is_prime(num)
    div = 2
    while(div*div<=num)
        if(num%div==0)
            return false
        end
        div = div + 1
    end
    return true
end
# res = is_prime(3) 
# if(res == true)
#     puts "Number is prime"
# 
# else
#     puts "Number is not prime"
# end

def print_all_primes(num)
    for i in (2..num)
        is_status = is_prime(i)
        if(is_status)
            puts i
        end
    end
end

print_all_primes(500)
