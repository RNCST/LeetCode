class Solution:
    def fib(self, n: int) -> int:
        x = 1;
        y = 0;
        f = x + y
        out = 0 ;
        if(n==0 | n==1):
            out = n;
        elif n>=2:
            for i in range(2,n):
                y = x
                x = f
                f = x + y
            out = f
            
        return out