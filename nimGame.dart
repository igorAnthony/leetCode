class Solution {
  bool canWinNim(int n) {
    if(n%4 == 0){
      return false;
    }else{
      return true;
    }
  }
}
void main(){
  Solution s = Solution();
  print(s.canWinNim(12));
}