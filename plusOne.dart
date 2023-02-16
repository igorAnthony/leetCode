class Solution {
  List<int> plusOne(List<int> digits) {
    for(int i = digits.length - 1; i >= 0; i--){
      if(digits[i] == 9 && i != 0){
        digits[i] = 0;
        continue;
      }else if(i == 0 && digits[i] == 9){
        digits[i] = 1;
        digits.add(0);
      }else{
        digits[i] += 1;
        break;
      }
    }
    return digits;
  }
}
void main(){
  Solution s = Solution();
  print(s.plusOne([9,9,9]));
}