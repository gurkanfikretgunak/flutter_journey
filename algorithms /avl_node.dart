class AvlNode<G> {
  AvlNode(this.value);
  G value;
  AvlNode<G>? preChild;
  AvlNode<G>? postChild;

  int height = 0;
  int get balanceFactor => leftHeight - rightHeight;
  int get leftHeight => preChild?.height ?? -1;
  int get rightHeight => postChild?.height ?? -1;

  void traverseInOrder(void Function(G value) move) {
    print(value);

    preChild?.traverseInOrder(move);
    move(value);
    postChild?.traverseInOrder(move);
  }

  void traversePreOrder(void Function(G value) move) {
    print(value);

    move(value);
    preChild?.traversePreOrder(move);
    postChild?.traversePreOrder(move);
  }

  void traversePostOrder(void Function(G value) move) {
    print(value);

    preChild?.traversePostOrder(move);
    postChild?.traversePostOrder(move);
    move(value);
  }

  @override
  String toString() {
    return 'something';
  }
}
