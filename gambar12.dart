class TNode<T> {  
  T nodeValue;
  TNode<T>? left, right;

  TNode(this.nodeValue) {
    left = null;
    right = null;
  }
}

class BinaryTree<T> {
  TNode<T>? root;

  BinaryTree() {
    root = null;
  }

  void displayTreeStructure() {
    if (root == null) {
      print("Tree is empty.");
      return;
    }
    print("Root: ${root!.nodeValue}");
    if (root!.left != null) {
      print("Left child of root: ${root!.left!.nodeValue}");
    }
    if (root!.right != null) {
      print("Right child of root: ${root!.right!.nodeValue}");
    }
    if (root!.left!.left != null) {
      print("Left child of ${root!.left!.nodeValue}: ${root!.left!.left!.nodeValue}");
    }
    if (root!.left!.right != null) {
      print("Right child of ${root!.left!.nodeValue}: ${root!.left!.right!.nodeValue}");
    }
    if (root!.right!.left != null) {
      print("Left child of ${root!.right!.nodeValue}: ${root!.right!.left!.nodeValue}");
    }
    if (root!.right!.right != null) {
      print("Right child of ${root!.right!.nodeValue}: ${root!.right!.right!.nodeValue}");
    }
    if (root!.right!.left!.left != null) {
      print("Left child of ${root!.right!.left!.nodeValue}: ${root!.right!.left!.left!.nodeValue}");
    }
    if (root!.right!.left!.right != null) {
      print("Right child of ${root!.right!.left!.nodeValue}: ${root!.right!.left!.right!.nodeValue}");
    }
  }
}

void main() {
  BinaryTree<String> t = BinaryTree<String>();

  t.root = TNode("+");
  t.root!.left = TNode("*");
  t.root!.right = TNode("/");
  t.root!.left!.left = TNode("a");
  t.root!.left!.right = TNode("b");
  t.root!.right!.left = TNode("-");
  t.root!.right!.right = TNode("e");
  t.root!.right!.left!.left = TNode("c");
  t.root!.right!.left!.right = TNode("d");

  t.displayTreeStructure();
}