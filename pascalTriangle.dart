class Solution {
  List<List<int>> generate(int numRows) {
    if(numRows <= 1) return numRows == 1 ? [[1]] : [[]];
    List<List<int>> pascalTriangle = [[1],[1,1]];
    int i = 3;
    List<int> temp;
    while(i <= numRows){
      temp = List.filled(i, 0);
      temp[0] = 1;
      temp[i - 1] = 1;
      for(int j = 1; j < pascalTriangle[i - 2].length;j++){
        if(j-1 >= 0){
          temp[j] = pascalTriangle[i - 2][j - 1] + pascalTriangle[i - 2][j];
        }
      }
      pascalTriangle.add(temp);
      i++;
    }
    print(pascalTriangle);
    return pascalTriangle;
  }
}
void main(){
  Solution s = Solution();
  print(s.generate(7));
}