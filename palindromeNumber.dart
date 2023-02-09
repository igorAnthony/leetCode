class Solution {
  bool isPalindrome(int x) {
    String stringNumber = x.toString();
    return stringNumber == stringNumber.split('').reversed.join();
  }
}
void main(){
  Solution solution = Solution();
  print(solution.isPalindrome(545));
}