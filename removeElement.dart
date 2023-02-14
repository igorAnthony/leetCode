class Solution {
  int removeElement(List<int> nums, int val) {
    int indexNotHaveValue = 0;
    for(int i = 0; i < nums.length; i++){
      if(nums[i] != val){
        nums[indexNotHaveValue] = nums[i];
        indexNotHaveValue++;
      }
    }
    return indexNotHaveValue;
  }
}
class Solution2 {
  int removeElement(List<int> nums, int val) {
    nums.removeWhere((item) => item == val);
    print(nums);
    return nums.length;
  }
}
void main(){
  Solution2 s = Solution2();
  print(s.removeElement([1,2,3,4,5,3,3,6,7,8], 3));
}