class Solution {
  String addBinary(String a, String b) {
    int i = a.length - 1, j = b.length - 1; 
    int excessValue = 0;
    String result = "";
    while(i >= 0 || j >= 0){
      if(i >= 0 && j >= 0){
        if(toInt(a[i]) + toInt(b[j]) + excessValue == 3){
          if(i == 0 && j == 0){
            result += "11";
          }else{
            result += "1";
            excessValue = 1;
          }
        }else if(toInt(a[i]) + toInt(b[j]) + excessValue == 2){
          if(i == 0 && j == 0){
            result += "01";
          }else{
            result += "0";
            excessValue = 1;
          }
        }else if(toInt(a[i]) + toInt(b[j]) + excessValue == 1){
          result += "1";
          excessValue = 0;
        }else{
          result += "0";
        }
      }else if(i >= 0){
        if(excessValue + toInt(a[i]) == 2){
          if(i == 0){
            result += "01";
            break;
          }
          else{
            result += "0";
          }
        }else if(excessValue + toInt(a[i]) == 1){
          result += "1";
          excessValue = 0;
        }else{
          result += "0";
        }
      }else if(j >= 0){
        if(excessValue + toInt(b[j]) == 2){
          if(j == 0){
            result += "01";
            break;
          }
          else{
            result += "0";
          }
        }else if(excessValue + toInt(b[j]) == 1){
          result += "1";
          excessValue = 0;
        }else{
          result += "0";
        }
      }
      i--;
      j--;
    }
    return result.split("").reversed.join();
  }
  int toInt(String a){
    return int.parse(a);
  }
}
class Solution2 {
  String addBinary(String a, String b) {
    int i = a.length - 1, j = b.length - 1; 
    int c = 0;
    String result = "";
    while(i >= 0 || j >= 0){
      if(i >= 0){
        c += toInt(a[i--]); 
      }
      if(j >= 0){
        c += toInt(a[j--]); 
      }
      result += (c%2).toString();
      c ~/= 2;
    }
    return result;
  }
  int toInt(String a){
    return int.parse(a);
  }
}
void main(){
  Solution s = Solution();
  print(s.addBinary("1", "111"));
}