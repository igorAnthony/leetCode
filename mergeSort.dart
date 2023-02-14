List<int> mergeSort(List<int> array){
  if(array.length <= 1){
    return array;
  }
  int splitIndex = array.length~/2;

  List<int> leftArray = mergeSort(array.sublist(0, splitIndex));
  print("leftArray = ${array.sublist(0, splitIndex)}");
  List<int> rightArray = mergeSort(array.sublist(splitIndex));
  print("rightArray = ${array.sublist(splitIndex)}");
  
  return merge(leftArray, rightArray);
}

List<int> merge(List<int> left_array, List<int> right_array){
  List<int> result = [];
  int i = 0, j = 0;
  while(i < left_array.length && j < right_array.length){
    if(left_array[i] <= right_array[j]){
      result.add(left_array[i]);
      i++;
    }else{
      result.add(right_array[j]);
      j++;
    }
  }
  while(i < left_array.length){
    result.add(left_array[i]);
    i++;
  }
  while(j < right_array.length){
    result.add(right_array[j]);
    j++;
  }
  print(result);
  return result;
}
void main(){
  print(mergeSort([1,5,6,7,2,4,10,9]));
}