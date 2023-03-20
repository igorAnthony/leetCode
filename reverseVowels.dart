class Solution {
  String reverseVowels(String s) {
    int j = s.length - 1;
    List<String> s_ = s.split("");
    List<String> vowels = ["a","e", "i", "o", "u"];
    String aux = "";
    for(int i = 0; i < s.length; i++){
      if(vowels.contains(s_[i].toLowerCase())){
        while(!vowels.contains(s_[j].toLowerCase())){
          j--;
        }
        if(i == j || i > j) break;
        aux = s_[i];
        s_[i] = s_[j];
        s_[j] = aux;
        j--;
      }
    }
    return s_.join();
  }
}
void main(){
  Solution s = Solution();
  print(s.reverseVowels("aA"));
}