
// Singly-linked List
var Node = function(data) {

  this.next = null;
  this.data = data;

  this.appendToTail = function(data) {
    var n = this;
    while (n.next != null) {
      n = n.next;
    };
    n.next = new Node(data);
  };
  
};

var LinkedList = function(node) {
  this.head = node;

  this.appendToTail = function(data) {
    this.head.appendToTail(data);
  };

  this.length = function() {
    var i = 1;
    var node = this.head;
    while (node.next !== null) {
      node = node.next;
      i++;
    };
    return i;
  }

  this.deleteNodeByValue = function(value) {
    var n = this.head;

    if (n.data === value) {
      this.head = n.next;
      console.log(this.head)
      return;
    };

    while (n !== null) {
      if (n.next.data === value) {
        n.next = n.next.next;
        break;
      };
      n = n.next;
    };

    return;

  };

};

a = new Node('a');
a.appendToTail('b');

list = new LinkedList(a);
list.appendToTail('c');

list.deleteNodeByValue('a');

console.log(list.length());