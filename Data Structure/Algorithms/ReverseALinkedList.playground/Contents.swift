// Created by Puneet Kumar on 17/01/22.

class LinkedList {
  var value: Int
  var next: LinkedList?

  init(value: Int,next: LinkedList?) {
    self.value = value
      self.next = next

  }
}

func reverseLinkedList(_ head: LinkedList?) -> LinkedList {
  // Write your code here.
  var currentNode: LinkedList? = head
  var prevNode: LinkedList?
  var nextNode: LinkedList?
  
  while currentNode != nil {
      nextNode = currentNode?.next
      currentNode?.next = prevNode
      prevNode = currentNode
      currentNode = nextNode
  }

    return prevNode!
}


let threeNode = LinkedList(value: 3, next: nil)
let twoNode = LinkedList(value: 2, next: threeNode)
let oneNode = LinkedList(value: 1, next: twoNode)

let myReversedList = reverseLinkedList(oneNode)

func printList(head: LinkedList?) {
    print("Printing out list of nodes")
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
}


printList(head:myReversedList)


