m = ARGV[0].to_i;
n = ARGV[1].to_i;
ARGV.clear();
arr = []
for i in (0..m-1)
    row = []
    for j in (0..n-1)
        val = gets.chomp.to_i;
        row.push(val)
    end
    arr.push(row)
end
irow = 0
icol = 0
nrow = m-1
ncol = n-1
count = 0

while(count <n*m)
    # left wall 
    for i in (irow..nrow)
        if(i<=nrow&&count<m*n)
            print(arr[i][icol].to_s+"  ")
            count  = count + 1
            i = i + 1
        end
    end
    icol = icol + 1

    # bottom wall
    for i in (icol..ncol)
        if(i<=ncol&&count<m*n)
            print(arr[nrow][i].to_s+" ")
            count = count + 1
            i = i + 1
        end
    end
    nrow = nrow - 1
    # right wall
    for i in (nrow).downto(irow)
        if(i>=irow&&count<m*n)
            print(arr[i][ncol].to_s+" ")
            count = count + 1
            # i = i - 1
        end
    end
    ncol = ncol - 1
    # top wall
    for i in (ncol).downto(icol)
        if(i>=icol&&count <m*n)
            print(arr[irow][i].to_s + " ")
            count = count + 1
        end
    end
    irow = irow + 1
end


  