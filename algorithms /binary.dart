class BinaryNode<G> {
  BinaryNode(this.value);

  G value;
  BinaryNode<G>? preChild;
  BinaryNode<G>? postChild;

  void traverseInOrder(void Function(G value) move) {
    preChild?.traverseInOrder(move);
    move(value);
    postChild?.traverseInOrder(move);
  }

  void traversePostOrder(void Function(G value) move) {
    preChild?.traversePostOrder(move);
    postChild?.traversePostOrder(move);
    move(value);
  }

  void traversePreOrder(void Function(G value) move) {
    move(value);
    preChild?.traversePreOrder(move);
    postChild?.traversePreOrder(move);
  }

  @override
  String toString() {
    return _diagram(this);
  }

  String _diagram(BinaryNode<G> binaryNode) {
    return 'something';
  }
}
