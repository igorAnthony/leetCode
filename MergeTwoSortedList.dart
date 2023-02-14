

class ListNode {
 int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode? head = ListNode();
    ListNode? tail = head;
    if(list1 == null){
      return list2;
    }
    if(list2 == null){
      return list1;
    }
    
    while(list1 != null && list2 != null){
      if(list1.val < list2.val){
        tail?.next = list1;
        list1 = list1.next;
      }else{
        tail?.next = list2;
        list2 = list2.next;
      }
      tail = tail?.next;
    }
    tail?.next = list1 != null ? list1 : list2;
    return head.next;
  }
}