class Solution {
  bool isPerfectSquare(int num) {
    int base = 2;
    if(num <= 1) return num == 1? true:false;
    while(base*base < num){
      base++;
    }
    return base * base == num;
  }
}
void main(){
  Solution s = Solution();
  print(s.isPerfectSquare(14));
}