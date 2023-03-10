class Solution {
  List<String> summaryRanges(List<int> nums) {
    if(nums.isEmpty) return [];
    List<String> summary = [];
    int startRange = nums[0];
    int countRange = 0;
    
    for (int i = 0; i < nums.length; i++) {
      if(i + 1 < nums.length){
        if(nums[i] + 1 != nums[i + 1]){
          if(countRange > 0){
            summary.add(startRange.toString() + "->" + nums[i].toString());
          }else{
            summary.add(nums[i].toString());
          }
          startRange = nums[i + 1];
          countRange = 0;
        }else{
          countRange++;
        }
      }else if(countRange > 0){
        summary.add(startRange.toString() + "->" + nums[i].toString());
      }else{
        summary.add(nums[i].toString());
      }
    }
    return summary;
  }
}
void main(){
  Solution s = Solution();
  print(s.summaryRanges([]));
}