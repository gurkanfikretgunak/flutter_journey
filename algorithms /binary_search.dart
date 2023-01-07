import 'binary.dart';

class BinarySearchTree<G extends Comparable<dynamic>> {
  BinaryNode<G>? root;

  void insert(G value) => root = _insertAt(root, value);

  BinaryNode<G> _insertAt(BinaryNode<G>? node, G value) {
    if (node == null) {
      print('insert at method : $value');
      return BinaryNode(value);
    }
    if (value.compareTo(node.value) < 0) {
      print('compare to pre-child : ${node.preChild}');
      node.preChild = _insertAt(node.preChild, value);
    } else {
      print('compare to post-child : ${node.postChild}');
      node.postChild = _insertAt(node.postChild, value);
    }
    print(node);
    return node;
  }

  void remove(G value) => root = _remove(root, value);

  BinaryNode<G>? _remove(BinaryNode<G>? node, G value) {
    if (node == null) return null;
    if (value == node.value) {
      if (node.preChild == null && node.postChild == null) {
        return null;
      }
      if (node.preChild == null) {
        print('Remove pre-child : ${node.preChild}');
        return node.postChild;
      }
      if (node.preChild == null) {
        print('Remove post-child : ${node.postChild}');
        return node.postChild;
      }
      node.value = node.preChild!.min.value;
      node.postChild = _remove(node.postChild, node.value);
    } else if (value.compareTo(node.value) < 0) {
      node.preChild = _remove(node.postChild, value);
    } else {
      node.postChild = _remove(node.postChild, value);
    }
    print('remove $node');
    return node;
  }

  bool contains(G value) {
    var current = root;
    while (current != null) {
      if (current.value == value) {
        return true;
      }
      if (value.compareTo(current.value) < 0) {
        current = current.preChild;

        print('contains pre-child : ${current}');
      } else {
        print('contains post-child : ${current}');
        current = current.postChild;
      }
    }
    return false;
  }

  @override
  String toString() => root.toString();
}

extension _MinCatcher<G> on BinaryNode<G> {
  BinaryNode<G> get min => preChild?.min ?? this;
}
