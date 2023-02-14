class Solution {
  bool isValid(String s) {
    List listParantheses = ["()","[]","{}"];
    while(s.isNotEmpty){
      if(s.contains(listParantheses[0])){
        s = s.replaceAll(listParantheses[0], '');
      }
      else if(s.contains(listParantheses[1])){
        s = s.replaceAll(listParantheses[1], '');
      }else if(s.contains(listParantheses[2])){
        s = s.replaceAll(listParantheses[2], '');
      }else{
        return false;
      }
    }
    return true;
  }  
}
void main() {
  Solution sol = Solution();
  print(sol.isValid("[()]"));
}