class Solution {
  int climbStairs(int n) {
    int possibilitiesToClimb = 0;
    if(n <= 1) return 1;
    possibilitiesToClimb = climbStairs(n - 2) + climbStairs(n - 1);
    return possibilitiesToClimb;
  }
}
class Solution2 {
  int climbStairs(int n) {
    List<int> possibilitiesToClimb = [];
    if(n <= 1) return n == 1 ? 1 : 0;
    possibilitiesToClimb.add(1);
    possibilitiesToClimb.add(2);
    while(possibilitiesToClimb.length < n){
      possibilitiesToClimb.add(possibilitiesToClimb[possibilitiesToClimb.length - 1] + possibilitiesToClimb[possibilitiesToClimb.length - 2]);
    }
    return possibilitiesToClimb[possibilitiesToClimb.length - 1];
  }
}
class Solution3 {
  int climbStairs(int n) {
    int possibilitiesToClimb = 0;
    int oneStepBefore = 2;
    int twoStepBefore = 1;
    int i = 2;
    while(i < n){
      possibilitiesToClimb = oneStepBefore + twoStepBefore;
      twoStepBefore = oneStepBefore;
      oneStepBefore = possibilitiesToClimb;
      i++;
    }
    return possibilitiesToClimb;
  }
}
void main(){
  Solution3 s = Solution3();
  print(s.climbStairs(45));
}