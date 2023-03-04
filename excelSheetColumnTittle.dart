class Solution {
  String? convertToTitle(int columnNumber) {
    if(columnNumber <= 1){
      return columnNumber == 1 ? "A" : null;
    }
    int aux = columnNumber;
    int prev = 0;
    String result = "";
    while(aux >= 1 && prev != 26){
      if(aux%26 == 0){
        result += 'Z';
      }else{
        result += String.fromCharCode((aux%26) + 64);
      }
      prev = aux;
      aux ~/= 26.00000001;
    }
    return result.split('').reversed.join();
  }
}
class Solution2 {
  String convertToTitle(int columnNumber) {
    if(columnNumber == 0){
      return "";
    }
    print(columnNumber);
    String result = convertToTitle(columnNumber~/26) + String.fromCharCode((columnNumber%26)+64);
    return result;
  }
}
void main(){
  Solution s = Solution();
  print(s.convertToTitle(52));
}