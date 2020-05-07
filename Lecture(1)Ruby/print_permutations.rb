def perm(qsf,asf)
    if qsf.empty?()
        puts asf
        return
    end

    # ruby => substring => range => inclusive
    # bracket operator => [startingIndex,Length]
    ch = qsf[0,1]
    # index , length
    roq = qsf[1,qsf.length()-1]
    for i in (0..asf.length())
        left = asf[0,i]
        right = asf[i,asf.length()-i]
        perm(roq,left+ch+right)
    end
end
perm("abc","")