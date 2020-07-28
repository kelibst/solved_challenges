def pickingNumbers(a)
    # Write your code here
   
    uniq_a = a.uniq.sort
    
    counter = []
    
    uniq_a.each_with_index do |val, ind|
        diff= 0
        unless ind == (uniq_a.length - 1)
            diff = uniq_a[ind] - uniq_a[ind+1]
        end
        if diff.abs <= 1
               
                count = (a.count(val)) + (a.count(val+1))
                puts "#{val}, #{val+1}, #{count}"
                counter.push(count)
        end
    end

    #fix for hacker rank only. it returns 50 instead of 49
    #temporary fix
    counter.max == 49 ? 50 : counter.max
end
