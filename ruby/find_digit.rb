# Complete the findDigits function below.
def findDigits(n)
    n_arr = n.to_s.split('')
    counter =0
    n_arr.each do |val|
        
        if val.to_i !=0 && n % val.to_i == 0
            counter+=1
            
        end
    end

    counter
end