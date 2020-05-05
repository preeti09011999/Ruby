arr = [2,7,3,1,8]
max = arr.max()
# to decrement 
for floor in (max).downto(1)   
    for i in (0..arr.length-1)
        if(floor>arr[i])
            print " \t"
         
        else
            print "*\t"
        end
    end
    puts
end
