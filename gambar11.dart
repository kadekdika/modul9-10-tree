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
    if (root!.right!.right!.left != null) {
      print("Left child of ${root!.right!.right!.nodeValue}: ${root!.right!.right!.left!.nodeValue}");
    }
    if (root!.right!.right!.right != null) {
      print("Right child of ${root!.right!.right!.nodeValue}: ${root!.right!.right!.right!.nodeValue}");
    }
  }
}
void main() {
  BinaryTree<String> t = BinaryTree<String>();

  t.root = TNode("A");
  t.root!.left = TNode("B");
  t.root!.right = TNode("C");
  t.root!.left!.left = TNode("D");
  t.root!.left!.right = TNode("E");
  t.root!.right!.left = TNode("F");
  t.root!.right!.right = TNode("G");
  t.root!.right!.right!.left = TNode("H");
  t.root!.right!.right!.right = TNode("I");

  t.displayTreeStructure();
}