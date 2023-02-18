class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    int j = 0, i = m;
    int lowerValue = nums1[0];
    while(i < nums1.length){
      nums1[i] = nums2[j];
      i++;
      j++;
    }
    for(i = 0; i < nums1.length; i++){
      for(j = i + 1; j < nums1.length; j++){
        if(nums1[i] > nums1[j]){
          lowerValue = nums1[j];
          nums1[j] = nums1[i];
          nums1[i] = lowerValue;
        }
      }
    }
  }
}
class Solution2 {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    int j = 0, i = m;

    while(i < nums1.length){
      nums1[i] = nums2[j];
      i++;
      j++;
    }
    nums1.sort();
  }
}
void main(){
  Solution s =Solution();
  s.merge([1,2,3,0,0,0], 3, [2,4,6], 3);
}