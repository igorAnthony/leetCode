import 'dart:math';

class Solution {
  bool isPowerOfFour(int n) {
    return log(n) / log(4) % 1 == 0;
  }
}
void main(){
  Solution s = Solution();
  print(s.isPowerOfFour(16));
}