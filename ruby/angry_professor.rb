# Complete the angryProfessor function below.
def angryProfessor(k, a)
    attendance = a.select do |attending|
        attending if attending <= 0
    end
    attendance.length >=k ? "NO" : "YES"
end