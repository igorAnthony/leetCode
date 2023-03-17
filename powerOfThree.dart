class Solution {
  bool isPowerOfThree(int n) {
    if(n <= 1) return n == 1 ? true : false;
    while(n > 1){
      if(n % 3 == 0){
        n ~/= 3;
      }else{
        break;
      }
    }
    return n == 1;
  }
}
void main(){
  Solution s = Solution();
  print(s.isPowerOfThree(-1));
}