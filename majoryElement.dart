class Solution {
  int majorityElement(List<int> nums) {
    int majorityElement = nums[0];
    int majorityLength = nums.where((element) => element == nums[0]).length;
    List<int> uniqueValues = [];
    for (var number in nums) {
      if(!uniqueValues.contains(number)){
        if(majorityLength < nums.where((element) => element == number).length){
          majorityElement = number;
          majorityLength = nums.where((element) => element == number).length;
        }
        uniqueValues.add(number);
      }else{
        continue;
      }
    }
    return majorityElement;
  }
}
void main(){
  Solution s = Solution();
  print(s.majorityElement([4,1,1,2,4,1,2,2,4,4,3,2,4]));
}