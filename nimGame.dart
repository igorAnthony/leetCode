class Solution {
  bool canWinNim(int n) {
    return n%4 != 0;
  }
}
void main(){
  Solution s = Solution();
  print(s.canWinNim(12));
}
