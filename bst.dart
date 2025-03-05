class Node {
  int data;
  Node? left, right;
  Node(this.data);
}

class BinarySearchTree {
  Node? root;
  insert(int data) {
    Node? current = root;
    Node newNode = Node(data);
    if (current == null) {
      root = newNode;
      return;
    }
    while (true) {
      if (data < current!.data) {
        if (current.left == null) {
          current.left = newNode;
          break;
        } else {
          current = current.left;
        }
      } else {
        if (current.right == null) {
          current.right = newNode;
          break;
        } else {
          current = current.right;
        }
      }
    }
  }

  contains(int data) {
    Node? current = root;
    while (current != null) {
      if (data < current.data) {
        current = current.left;
      } else if (data > current.data) {
        current = current.right;
      } else {
        return true;
      }
    }
    return false;
  }
}

void main(List<String> args) {
  BinarySearchTree binarySearchTree = BinarySearchTree();
  binarySearchTree.insert(10);
  binarySearchTree.insert(8);
  binarySearchTree.insert(11);
  print(binarySearchTree.contains(8));
}
