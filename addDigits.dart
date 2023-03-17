class Solution {
  int addDigits(int num) {
    while(num >= 10){
      List<String> s = num.toString().split('');
      num = 0;
      for (var element in s) {
        num += int.parse(element);
      }
    }
    return num;
  }
}
void main(){
  Solution s = Solution();
  print(s.addDigits(0));
}