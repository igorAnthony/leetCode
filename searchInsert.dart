class Solution {
  int searchInsert(List<int> nums, int target) {
    int i, index = -1;
    index = nums.indexOf(target);
    if(index != -1) return index;
    for(i = 0; i < nums.length; i++){
      if(i + 1 < nums.length){
        if((nums[i] < target && nums[i+1] > target)){
          return i+1;
        }
      }
    }
    return nums[0] > target ? 0 : nums.length;
  }
}
class Solution2 {
  int searchInsert(List<int>? nums, int target) {
		if(nums == null || nums.length == 0) return 0;
		
		int n = nums.length;
		int lado_esquerdo = 0;
		int lado_direito = n - 1;
		while(lado_esquerdo < lado_direito){
			int meio = lado_esquerdo + (lado_direito - lado_esquerdo)~/2;
      print("lado esquerdo: ${lado_esquerdo} lado direito: ${lado_direito} meio: ${meio}");
			if(nums[meio] == target) return meio;
			else if(nums[meio] > target) lado_direito = meio; // right could be the result
			else lado_esquerdo = meio + 1; // m + 1 could be the result
		}
		
		// 1 element left at the end
		// post-processing
		return nums[lado_direito] < target ? lado_direito + 1: lado_direito;
	}
}
void main(){
  Solution2 s = Solution2();
  print(s.searchInsert([2,4,5,6,7], 3));
}