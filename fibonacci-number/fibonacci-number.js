/**
 * @param {number} n
 * @return {number}
 */
var fib = function(n) {
    
    if(n ===0 || n ===1) return n;
    
    let x = 1;
    let y = 0;
    let f = x + y;
//   x  y
//2  1  0   1 + 0
//3  1  1   2 + 1
//4  2  1   3 + 2
//5  3  2   4 + 3    
    for(let i = 2 ; i< n ; i++){
        console.log(f)
        y = x
        x = f
        
        f = x + y;
        console.log(f)
    }
    
    return f;
};


