class Solution {
  bool isHappy(int n) {
    List<String> aux;
    int result = n;
    while(n >= 7){
      aux = n.toString().split('');
      result = 0;
      for(int i = 0; i < aux.length; i++){
        result += int.parse(aux[i])*int.parse(aux[i]);
      }
      n = result;
    }
    return n == 1 ? true : false;
  }
}
void main(){
  Solution s = Solution();
  print(s.isHappy(4));
}