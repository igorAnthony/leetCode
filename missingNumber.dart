class Solution {
  int missingNumber(List<int> nums) {
    if(nums.length == 1){
      return nums[0] > 0 ? nums[0] - 1 : nums[0] + 1;
    }
    nums.sort();
    int prev = nums[0];
    if(prev != 0) return 0;
    for (int i = 1; i < nums.length; i++) {
      if(prev + 1 != nums[i]){
        return prev + 1;
      }
      prev = nums[i];
    }
    return nums.last + 1;
  }
}
void main(){
  Solution s = Solution();
  print(s.missingNumber([9,6,4,2,3,5,7,0,1]));
}