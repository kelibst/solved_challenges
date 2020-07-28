function happyLadybugs(b) {
    let arr = b.split("");
    let arr2 = [];
    let res = "YES"; 
    if ((arr.every( (val, i, arr) => val === "_" ))==true){
        return res;
    } else if (arr.includes("_")==false){
        if ((arr.every( (val, i, arr) => val === arr[0] ))==true){
            return res;
        } else {
            for (var k = 1; k < arr.length-1 ; k++) {                
                if (arr[k] != arr[k+1] && arr[k]!=arr[k-1]){
                    res = "NO";
                    return res;
                }
            }
            return res;
        }
            
        
    } else {
        for (var i = 0; i<arr.length; i++){
            var count = 1; 
            if(arr[i] === "_"){
                count = 0;
            }
            for ( var j = 0; j<arr.length; j++){
                if (i!=j && arr[i]==arr[j] && arr[i] != "_"){
                    count++;
                }
            }
        arr2.push(count);
        }
        if ((arr2.every( (val, i, arr) => val%2==0 ))==true){
            return res;
        } else if (arr2.includes(1)==true){
            res = "NO";
            return res;
        } else {
            return res;
        }
    }
}