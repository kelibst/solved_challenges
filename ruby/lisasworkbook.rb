def workbook(n, k, arr)
  spe_char = 0
  total_pages = 0
  (0...n).each do |x|
    pages = (arr[x] / k.to_f).ceil
   
    total_pages += pages
    if arr[x] >= total_pages
      print arr[x], total_pages
      p ''
      spe_char+=1
    end
  end
  spe_char
end
n = 10
k = 5
arr = [3, 8, 15, 11, 14, 1, 9, 2, 24, 31]

puts workbook(n, k, arr)
