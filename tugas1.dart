class STNode<T extends num> {
  T nodeValue;
  STNode<T>? left, right, parent;

  STNode(this.nodeValue, [this.parent]) {
    left = null;
    right = null;
  }
}

class BinarySearchTree<T extends num> {
  STNode<T>? root;
  int treeSize = 0;

  BinarySearchTree() {
    root = null;
  }

  bool add(T item) {
    STNode<T>? t = root, parent;
    int orderValue = 0;

    while (t != null) {
      parent = t;
      orderValue = item.compareTo(t.nodeValue);

      if (orderValue == 0) {
        return false;
      } else if (orderValue < 0) {
        t = t.left;
      } else {
        t = t.right;
      }
    }

    STNode<T> newNode = STNode(item, parent);
    if (parent == null) {
      root = newNode;
    } else if (orderValue < 0) {
      parent.left = newNode;
    } else {
      parent.right = newNode;
    }
    treeSize++;
    return true;
  }

  STNode<T>? findNode(T item) {
    STNode<T>? t = root;
    int orderValue = 0;

    while (t != null) {
      orderValue = item.compareTo(t.nodeValue);
      if (orderValue == 0) {
        return t;
      } else if (orderValue < 0) {
        t = t.left;
      } else {
        t = t.right;
      }
    }
    return null;
  }

  bool find(T item) {
    return findNode(item) != null;
  }

  T? first() {
    if (root == null) return null;

    STNode<T>? t = root;
    while (t!.left != null) {
      t = t.left;
    }
    return t.nodeValue;
  }
}

void main() {
  BinarySearchTree<int> bst = BinarySearchTree<int>();

  bst.add(35);
  bst.add(18);
  bst.add(25);
  bst.add(48);
  bst.add(20);
  bst.add(10);

  print('Tree Size: ${bst.treeSize}');
  print('Nilai terkecil dalam BST: ${bst.first()}');
}