class Solution {
  void reverseString(List<String> s) {
    int j = s.length - 1;
    String aux = "";
    for(int i = 0; i < s.length; i++){
      if(i == j || i > j) break;
      aux = s[i];
      s[i] = s[j];
      s[j] = aux;
      j--;
    }
  }
}
void main(){
  Solution s = Solution();
  s.reverseString(["h","e","l","l","o"]);
}