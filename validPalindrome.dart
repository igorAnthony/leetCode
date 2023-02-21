class Solution {
  bool isPalindrome(String s) {
    String result = s.replaceAll(RegExp('[^A-Za-z0-9]'), '').toLowerCase();
    print("${result} == ${result.split("").reversed.join()}");
    if(result == result.split("").reversed.join()){
      return true;
    }
    return false;
  }
}
void main(){
  Solution s = Solution();
  print(s.isPalindrome("A man, a plan, a canal: Panama"));
}