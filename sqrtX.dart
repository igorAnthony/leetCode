class Solution {
  int mySqrt(int x) {
    int base = 2;
    if(x <= 1) return x == 1? 1:0;
    while(base*base <= x){
      base++;
    }
    return base - 1;
  }
}
void main(){
  Solution s = Solution();
  print(s.mySqrt(49));
}