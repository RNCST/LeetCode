class Solution {
    public void sortColors(int[] nums) {
        int indexZero= 0;
        int indexOne = 0;
        int indexTwo = 0;
            
        for(int i = 0 ;i < nums.length ; i++){
            if(nums[i]==0){
                nums[indexTwo++]=2;
                nums[indexOne++]=1;
                nums[indexZero++]=0;
            }else if(nums[i]==1){
                nums[indexTwo++]=2;
                nums[indexOne++]=1;
            }else {
                nums[indexTwo++]=2;
            }
        }
    }
}