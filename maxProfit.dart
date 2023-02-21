class Solution {
  int maxProfit(List<int> prices) {
    int bestDayToBuy = 0;
    int bestDayToSell = 1;
    int maxProfit = 0;
    if(prices.length == 1) return 0;
    for (int i = 0; i < prices.length; i++) {
      maxProfit = prices[bestDayToSell] - prices[bestDayToBuy]; 
      if(prices[i] <= prices[bestDayToBuy]){
        for(int j = i + 1; j < prices.length; j++){
          if(maxProfit < prices[j] - prices[i]){
            bestDayToBuy = i;
            bestDayToSell = j;
            maxProfit = prices[bestDayToSell] - prices[bestDayToBuy];
          }
        }
      }
    }
    return prices[bestDayToSell] - prices[bestDayToBuy] >= 0 ? prices[bestDayToSell] - prices[bestDayToBuy] : 0;
  }
}
class Solution2 {
  int maxProfit(List<int> prices) {
    int max = 0;
    int min = prices[0];
    for (var price in prices) {
      min = price < min ? price : min;
      max = (price - min) > max ? price - min : max;
    }
    return max;
  }
}
void main(){
  Solution2 s = Solution2();
  print(s.maxProfit([3,2,6,5,0,3]));
}