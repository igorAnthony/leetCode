class Solution {
  void moveZeroes(List<int> nums) {
    for (var element in nums) {
      if(element == 0){
        nums.remove(element);
        nums.add(element);
      }
    }
  }
}
void main(){
  Solution s = Solution();
  s.moveZeroes([0,0,1]);
}