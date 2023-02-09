class Solution {
  bool isPalindrome(int x) {
    String stringNumber = x.toString();
    return stringNumber == stringNumber.split('').reversed.join();
  }
}
class Solution2 {
  bool isPalindrome(int x) {
    double aux;
    int inputNumber = x;
    int newNumber = 0;
    while(x > 0){
      newNumber = newNumber*10 + x%10;print("valor de novo: $newNumber");
      aux = x/10; 
      x = aux.toInt();
    }
    return inputNumber == newNumber;
  }
}
void main(){
  Solution2 solution = Solution2();
  print(solution.isPalindrome(545));
}