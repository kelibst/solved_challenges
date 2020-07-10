
function fibonacci(n) {
    
    fibs = [1,2]
    x =0

    while(fibs[x] <=n){
        fibs.push(fibs[x] + fibs[x+1]);
        x+=1
    }


     even_fibs = fibs.filter(fib => {
        if (fib%2==0 && fib < n){
            return fib
        }
     });

     res =  even_fibs.reduce((total, fib) => {
         return total + fib
     })
     return res
}


console.log(fibonacci(10)); // 10
console.log(fibonacci(100)); // 44