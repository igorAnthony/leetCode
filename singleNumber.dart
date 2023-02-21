class Solution {
  int? singleNumber(List<int> nums) {
    for (var number in nums) {
      if(nums.where((element) => element == number).length == 1){
        return number;
      }
    }
    return nums[0];
  }
}
class Solution2 {
  int? singleNumber(List<int> nums) {
    int singleNumber = -1;
    for (var number in nums) {
      if(nums.indexOf(number) == nums.lastIndexOf(number)){
        singleNumber = number;
        break;
      }
    }
    return singleNumber;
  }
}
void main(){
  Solution s = Solution();
  print(s.singleNumber([2,2,1]));
}