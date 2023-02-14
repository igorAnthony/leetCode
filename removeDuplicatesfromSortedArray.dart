class Solution {
  int removeDuplicates(List<int> nums) {
    for(int i = 0; i < nums.length; i++){
      for(int j = i + 1; j < nums.length; j++){
        if(nums[i] == nums[j]){
          nums.removeAt(j);
          j--;
        }
      }
    }
    return nums.length;
  }
}
class Solution2 {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) {
      return 0;
    }
    int index = 0, uniqueElements = 0;
    for(int i = 0; i < nums.length; i++){
      uniqueElements = nums[index];
      if(uniqueElements != nums[i]){
        nums[index + 1] = nums[i];
        index++;
      }
    }
    print(nums);
    return index+1;
  }
}

void main(){
  Solution2 s = Solution2();
  s.removeDuplicates([0,0,1,1,1,2,2,3,3,4]);
}