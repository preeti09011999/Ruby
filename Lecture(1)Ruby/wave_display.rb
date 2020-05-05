m = ARGV[0].to_i;
n = ARGV[1].to_i

ARGV.clear(); 
arr = []
for i in (0..m-1)
    row = []
    for j in (0..n-1)
        val = gets.chomp.to_i
        row.push(val)
    end
    arr.push(row)
end

puts "*********************************************"

def wave_display(arr)
    for j in (0..arr[0].length-1)
        if(j%2 == 0)
           for i in (0..arr.length-1)
                print (arr[i][j].to_s + "   ")
           end     
        else
            for k in (arr.length-1).downto(0)
                print (arr[i][j].to_s + "  ")
            end
        end
    end
    puts 
    puts "**************************"
end

wave_display(arr)
