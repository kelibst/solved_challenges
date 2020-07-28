function chocolateFeast(n, c, m) {
    let wrapped = 0;
    let total = 0;
    let extra = 0;
    total = Math.floor(n/c);
    wrapped = total;
    while (wrapped >= m){
        total = total + Math.floor(wrapped/m);
        extra = wrapped % m;
        wrapped = Math.floor(wrapped/m) + extra;
    }
    return total;
}