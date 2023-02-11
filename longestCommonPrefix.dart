import 'dart:math';

class Solution {
  String longestCommonPrefix(List<String> strs) {
    int indexStringCompared = 0;
    String firstStringPrefix = strs[indexStringCompared].isEmpty ? '' : strs[indexStringCompared][indexStringCompared];
    if(strs.length == 1) return firstStringPrefix;
    String commonPrefix = '';
    int count = 1;
    int j = 1;
    for(int i = 0; i < strs[0].length; i++){
      firstStringPrefix = strs[indexStringCompared][i];
      for(j = 1; j < strs.length; j++){
        if(i < strs[j].length){
          if(strs[j][i] == firstStringPrefix){
          count++;
          }else{
            break;
          }
        }else{
          break;
        }        
      }
      if(count == strs.length){
        commonPrefix += firstStringPrefix;
      }else{
        break;
      }
      count = 1;
    }
    return commonPrefix;
  }
}
class Solution2 {
  String longestCommonPrefix(List<String> strs) {
    String commonPrefix = strs.first;
    for (final word in strs) {
        while (!word.startsWith(commonPrefix)) {
            commonPrefix = commonPrefix.substring(0, commonPrefix.length - 1);
        }
    }
    return commonPrefix;
  }
}


void main(){
  Solution s = Solution();
  print(s.longestCommonPrefix(["ab","a"]));
}