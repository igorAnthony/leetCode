class Solution {
  String addBinary(String a, String b) {
    String result = "";
    String passToNext = "0";
    int i = a.length - 1;
    int j = b.length - 1;
    while(i >= 0 || j >= 0){
      if(i >= 0 && j >= 0){
        if(int.parse(a[i]) + int.parse(b[j]) + int.parse(passToNext) == 3){
          if(i == 0){
            result += "11";
          }else{
            result += "1";
            passToNext = "1";
          }
        }else if(int.parse(a[i]) + int.parse(b[j]) + int.parse(passToNext) ==  2){
          if(i == 0 && j == 0){
            result += "01";
          }else{
            result += "0";
            passToNext = "1";
          }
        }else if(int.parse(a[i]) + int.parse(b[j]) + int.parse(passToNext) ==  1){
          result += "1";
          if(int.parse(passToNext) ==  1){
            passToNext = "0";
          }
        }else{
          result += "0";
        }
      }else{
        if(i >= 0){
          if(int.parse(a[i]) + int.parse(passToNext) == 2 && i > 0){
            result += "0";
          }else{
            result += "01";
          }
        }if(j >= 0){
          if(int.parse(b[j]) + int.parse(passToNext) == 2 && j > 0){
            result += "0";
          }else{
            result += "01";
          }
        }
      }
      i--;
      j--;
      if(i < 0 && passToNext == "0"){
        b.split("").removeRange(0, j);
        result += b.split("").reversed.join();
        break;
      }else if(j < 0 && passToNext == "0"){
        a.split("").removeRange(0, i);
        result += a.split("").reversed.join();
        break;
      }
    }
    return result.split("").reversed.join();
  }
}
class Solution2 {
  String addBinary(String a, String b) {
    int i = a.length - 1, j = b.length - 1; 
    int excessValue = 0;
    while(i >= 0 || j >= 0){
      if(i >= 0 && j >= 0){
        if(toInt(a[i]) + toInt(b[i]) + excessValue == 3){
          
        }
      }
      i--;
      j--;
    }
  }
  int toInt(String a){
    return int.parse(a);
  }
}
void main(){
  Solution s = Solution();
  print(s.addBinary("100", "110010"));
}