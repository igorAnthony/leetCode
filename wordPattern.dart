class Solution {
  bool wordPattern(String pattern, String s) {
    List<String> list = s.split(" ");
    List<String> list2 = pattern.split("");
    String left = list2[0];
    String right = list2[list2.length - 1];
    String right2 = list[list.length - 1][0];
    int right_index = list.length - 1;
    for (int i = 0; i < list.length;i++) {
      left = list2[i];
      right = list2[right_index];
      right2 = list[right_index][0];
      if(left == right){
        if(list[i][0] != right2) return false;
      }else{
        if(list[i][0] == right2) return false;
      }
      right_index--;
    }
    return true;
  }
}
void main(){
  Solution s = Solution();
  print(s.wordPattern("aaaa", "dog dat dat dish"));
}