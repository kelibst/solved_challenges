// Complete the angryProfessor function below.
function angryProfessor(k, a) {
    let arr = a.filter((x) => x<=0);
    return arr.length >=k ? "NO" : "YES"
}