class MyStack {
  late List<int> myStack;
  MyStack() {
    myStack = [];
  }
  
  void push(int x) {
    myStack.add(x);
  }
  
  int? pop() {
    if(empty()) return null;
    return myStack.removeLast();
  }
  
  int? top() {
    if(empty()) return null;
    return myStack.last;
  }
  
  bool empty() {
    return myStack.isEmpty;
  }
}
void main(){
  
}