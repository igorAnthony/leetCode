class Solution {
  bool wordPattern(String pattern, String s) {
    List<String> words = s.split(" ");
    if(words.length != pattern.length) return false;
    
    Map<String, String> wordPatternMap = {};
    
    for(int i = 0; i < words.length; i++){
      if(!wordPatternMap.containsKey(pattern[i]) && !wordPatternMap.containsValue(words[i])){
        wordPatternMap[pattern[i]] = words[i];
      }else if(wordPatternMap[pattern[i]] != words[i]){
        return false;
      }    
    }
    return true;
  }
}
void main(){
  Solution s = Solution();
  print(s.wordPattern("ab", "happy hacking"));
}