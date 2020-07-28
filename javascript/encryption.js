
function encryption(s) {
    s = s.replace(/\s/g, ""); 
    let stringLength = s.length;
    let columns = 0;
    let line = 0;
    let arr = s.split("");
    let small = [];
    let result = [];
    if (Number.isInteger(Math.sqrt(stringLength)) == true){
        columns = Math.sqrt(stringLength);
        line = Math.sqrt(stringLength);
    } else {
        line = Math.floor(Math.sqrt(stringLength));
        columns = Math.ceil(Math.sqrt(stringLength));
    }
    ((line * columns) < stringLength) && line ++ ;
    for (var i = 0; i < arr.length; i+= columns){
        small.push(arr.slice(i,(i+columns)));
    }
    for (var j = 0; j < columns; j++){
        for (var k = 0; k < line; k++){            
            if (small[k][j] != null){
                result.push(small[k][j]);
            }else {
                result.push(" ");
            }
        }
    }
    result = result.join("");
    var result2 = "";
    for (var n = 0; n < result.length; n += line){
        result2 += result.slice(n, n+line )+" ";
    }
    result2 = result2.replace(/  +/g, ' ');
    return result2;
}