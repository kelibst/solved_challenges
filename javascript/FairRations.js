function fairRations(B) {
    if (B.reduce((a, b) => a + b) % 2 != 0){
        return 'NO';
    }
    let counter = 0;
    for (var i=0; i<B.length; i++){
        if (B[i]%2 != 0){
            B[i]++;
            B[i+1]++;
            counter++;
        }
    }
    return counter*2;
}