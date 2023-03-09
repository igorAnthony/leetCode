class Solution {
  bool containsDuplicate(List<int> nums) {
    Set uniqueValues = nums.toSet();
    return uniqueValues.length != nums.length ? true : false;
  }
}
void main(){
  Solution s = Solution();
  print(s.containsDuplicate([1,3,4,5,6,6,7]));
}