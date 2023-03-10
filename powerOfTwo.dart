class Solution {
  bool isPowerOfTwo(int n) {
    while(n > 1){
      if(n%2!=0) break;
      n~/=2;
    }
    return n == 1 ? true : false;
  }
}
void main(){
  Solution s = Solution();
  print(s.isPowerOfTwo(3));
}