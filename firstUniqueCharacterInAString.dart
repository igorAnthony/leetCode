class Solution {
  int firstUniqChar(String s) {
    List s1 = s.split("");
    List uniqueValues = [];
    for (var i = 0; i < s1.length; i++) {
      if(!uniqueValues.contains(s1[i])){
        if(s1.where((element) => element == s1[i]).length == 1){
          return i;
        }
        uniqueValues.add(s[i]);
      } 
    }
    return -1;
  }
}
void main(){
  Solution s = Solution();
  print(s.firstUniqChar("loveleetcode"));
}