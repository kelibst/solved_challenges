// Complete the palindromeIndex function below.
function palindromeIndex(s) {
    let s_arr = s.split('').reverse().join('')
   
 
    if (s == s_arr){
        //return -1 if it is already a palindrome
        return -1
    }

    for (let x = 0; x < s.length; x++){
        if (s.charAt(x) != s_arr.charAt(x)){
            let arr = s.split('')
            arr.splice(x,1);
            //remove a character from original string
            if (arr.join('') == arr.reverse().join('')){
                //return index if it is a palindrome
                return x
            }else{
                let s_rev = s.split('');
                //else remove index from reverse
                //check if it is a palindrome now
                let revv = s_rev.reverse()
                revv.splice(x,1);
               
                if (revv.join('') == revv.reverse().join('')){
                    
                    return s.length - (x+1)
                }else{
                   
                    return -1
                }
            }
        }
    }

}


s= "aaab"
console.log(palindromeIndex(s))
console.log(palindromeIndex("aaaaaa"))