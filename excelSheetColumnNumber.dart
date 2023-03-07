class Solution {
  int titleToNumber(String columnTitle) {
    int aux = 0;
    int i = 0;
    int result = 0;
    while(i < columnTitle.length){
      aux = columnTitle.codeUnitAt(i);
      aux -= 64;
      result = result*26 + aux; 
      
      i++;
    }
    return result;
  }
}
void main(){
  Solution s = Solution();
  print(s.titleToNumber('AC'));
}
//int newnum2 = int.parse(str);
//dont do this: Error: Invalid radix-10 number