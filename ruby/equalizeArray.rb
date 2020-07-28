# Complete the equalizeArray function below.
def equalizeArray(arr)
    counter = []
    arr.each do |val|
        count = arr.count(val)
        counter.push(count)
    end
    arr.length - counter.max 
end