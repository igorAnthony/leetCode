class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    List<int> uniqueValues1;
    List<int> uniqueValues2;
    List<int> intersection = [];
    if(nums1.length > nums2.length){
      uniqueValues1 = nums1.toSet().toList();
      uniqueValues2 = nums2.toSet().toList();
    }else{
      uniqueValues1 = nums2.toSet().toList();
      uniqueValues2 = nums1.toSet().toList();
    }
    for(int i = 0; i < uniqueValues2.length; i++){
      if(uniqueValues1.contains(uniqueValues2[i])){
        intersection.add(uniqueValues2[i]);
      }
    }
    return intersection;
  }
}
void main(){
  Solution s = Solution();
  print(s.intersection([4,9,5], [9,4,9,8,4]));
}