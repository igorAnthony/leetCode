class Solution {
  int lengthOfLastWord(String s) {
    int lengthLastWord = 0;
    for(int i = s.length - 1; i >= 0; i--){
      if(s[i] == " " && lengthLastWord == 0){
        continue;
      }
      else if(s[i] == " " && lengthLastWord != 0){
        return lengthLastWord;
      }
      lengthLastWord++;
    }
    return lengthLastWord;
  }
}
class Solution2 {
  int lengthOfLastWord(String s) {
    s = s.trim();
    return s.split(' ').last.length;
  }
}
void main(){
  Solution2 s = Solution2();
  print(s.lengthOfLastWord("   fly me   to   the moon  "));
}