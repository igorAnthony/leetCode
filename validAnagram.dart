class Solution {
  bool isAnagram(String s, String t) {
    s = s.split(" ").join().toLowerCase();
    t = t.split(" ").join().toLowerCase();
    if(s.length != t.length) return false;

    List<String> uniqueString = [];
    int count = 0;
    for (int i = 0; i < s.length; i++) {
      if(!uniqueString.contains(s[i])){
        if(s[i].allMatches(s).length == s[i].allMatches(t).length){
          count += s[i].allMatches(s).length;
          uniqueString.add(s[i]);
        }else{
          break;
        }
      }
      
    }
    return count == s.length ? true : false;
  }
}
class Solution2 {
  bool isAnagram(String s, String t) {
    s = s.split(" ").join().toLowerCase();
    t = t.split(" ").join().toLowerCase();
    if(s.length != t.length) return false;
    
    List<String> s1;
    List<String> t2;
    
    s1 = s.split("");
    t2 = t.split("");

    s1.sort();
    t2.sort();

    s = s1.join();
    t = t2.join();

    return s == t ? true : false;
  }
}
void main(){
  Solution2 s = Solution2();
  print(s.isAnagram("tomarnocu", "ACM notour"));
}