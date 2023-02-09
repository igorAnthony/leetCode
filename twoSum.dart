class Solution {
  int comparedIndex = 0;
  List<int> twoSum(List<int> nums, int target) { 
    int currentIndex = comparedIndex + 1;
    while(comparedIndex + 1 < nums.length){
      if(nums[comparedIndex] + nums[currentIndex] == target){
        return [comparedIndex, currentIndex];
      }
      if(currentIndex + 1 >= nums.length){
        comparedIndex++;
        currentIndex = comparedIndex + 1;
      }else{
        currentIndex++;
      }
    }
    return []; 
  }
}
void main(){
  Solution solution = Solution();
  print(solution.twoSum([3,1, 1,1,4,3], 6));
}