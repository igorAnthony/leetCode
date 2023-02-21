class Solution {
  List<int> getRow(int rowIndex) {
    List<List<int>> pascalTriangle = [[1],[1,1]];
    if(rowIndex <= 1) return rowIndex == 1 ? pascalTriangle[1] : pascalTriangle[0];
    int i = 3;
    List<int> temp;
    while(i <= rowIndex + 1){
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
    return pascalTriangle[rowIndex];
  }
}
void main(){
  Solution s = Solution();
  print(s.getRow(5));
}