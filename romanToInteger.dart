class Solution {
  final romanSimbols = {'I':1, 'V':5,'X':10, 'L':50,'C':100,'D':500,'M':1000};
  int romanToInt(String s) {
    int valueReturned = 0;
    int equalValues = 0;
    for(int i = 0; i < s.length; i++){
      print("valor de $i");
      if(i < s.length){
        if(i+1 < s.length && s[i] == s[i + 1]){
          for(int j = i + 1; j < s.length; j++){
            equalValues = 0;
            if(j+1 < s.length){
              if(s[j] == s[j+1]){
                equalValues;
              }else{
                break;
              }
            }
            print("valor de iguais $equalValues");
          }
          if(s[i].allMatches(s).length > equalValues){
            equalValues = s[i].allMatches(s).length - 1;
          }else{
            equalValues = s[i].allMatches(s).length;
          }
          valueReturned += (romanSimbols[s[i]]!*equalValues);
          i += equalValues - 1;
        }
        else if(i+1 < s.length && romanSimbols[s[i]]! < romanSimbols[s[i+1]]!){
          print("if2 valor de i: $i");
          valueReturned +=  romanSimbols[s[i+1]]! - romanSimbols[s[i]]!; 
          i++;
        }else{
          print("if3 valor de i: $i");
          valueReturned += romanSimbols[s[i]]!;
        }
        print("valor retornado $valueReturned");
      }
    }
    return valueReturned;
  }
}
class Solution2 {
  final romanSimbols = {'I':1, 'V':5,'X':10, 'L':50,'C':100,'D':500,'M':1000};
  int romanToInt(String s) {
    int resultRomanToInteger = 0;
    int current = 0;
    int prev = 0;
    for(int i = s.length - 1; i >= 0; i--){
      current = romanSimbols[s[i]]!;
      resultRomanToInteger += current >= prev ? current : -current ;
      prev = current;
    }
    return resultRomanToInteger;
  }
}
void main(){
  Solution2 s = Solution2();
  print(s.romanToInt("MMCCCXCIX"));
}