class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    List copyMagazine = magazine.split("");
    for (var item in ransomNote.split("")) {
      if(copyMagazine.contains(item)){
        copyMagazine.remove(item);
      }else{
        return false;
      }
    }
    return true;
  }
}
void main(){
  Solution s = Solution();
  print(s.canConstruct("aab", "baa"));
}