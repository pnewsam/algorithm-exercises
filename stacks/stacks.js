var Stack = function() {
  this.top = null;
};

var stackNode = function(data) {
  this.data = data;
  this.next = null;
};

Stack.prototype.push = function(data) {
  var t = new stackNode(data);
  t.next = this.top;
  this.top = t;
};

Stack.prototype.pop = function() {
  if (this.top === null) {
    console.log('Stack is empty!');
  }
  var item = this.top.data;
  this.top = this.top.next;
  return item;
}

Stack.prototype.peek = function() {
  if (this.top === null) {
    console.log('Stack is empty!')
  }
  return this.top.data;
};

Stack.prototype.isEmpty = function() {
  return this.top === null;
};

s = new Stack();
