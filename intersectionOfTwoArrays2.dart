class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    List<int> theBiggestList;
    List<int> minorList;
    List<int> intersection = [];
    if(nums1.length > nums2.length){
      theBiggestList = nums1;
      minorList = nums2;
    }else{
      theBiggestList = nums2;
      minorList = nums1;
    }
    for(int i = 0; i < minorList.length; i++){
      if(theBiggestList.contains(minorList[i])){
        theBiggestList.remove(minorList[i]);
        intersection.add(minorList[i]);
      }
    }
    return intersection;
  }
}
void main(){
  Solution s = Solution();
  print(s.intersect([3,1,2], [1,1]));
}