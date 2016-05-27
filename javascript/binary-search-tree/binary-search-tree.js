'use strict'

class BinarySearchTree {
  constructor(data) {
    this.data = data;
    this.right = null;
    this.left = null;
  }

  data () {
    this.data;
  }

  insert(data) {
    if (!this.data) {this.data = data;}
    if (data > this.data) {
      if (this.right) {
        this.right.insert(data);
      } else {
        this.right = new BinarySearchTree(data)
      }
    } else if (data <= this.data) {
      if (this.left) {
        this.left.insert(data);
      } else {
        this.left = new BinarySearchTree(data)
      }
    }
  }

  each(foo) {
    if (!this) {
      return;
    } else {
      if (this.left) { this.left.each(foo); }
      foo(this.data);
      if (this.right) { this.right.each(foo);}
    }
    return;
  }
}



module.exports = BinarySearchTree;
