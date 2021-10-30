class Solution {
    public int fib(int n) {
        return fibo(n);
    }
    
    public int fibo(int n){
        int out =0;
        if(n==0 || n==1){
            out = n;
        }else {
            out = fibo(n-1) + fibo(n-2);
        }
        return out;
    }
}