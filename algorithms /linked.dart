class Node<G> {
  Node({required this.value, this.following});

  G value;
  Node<G>? following;

  @override
  String toString() {
    if (following == null) return '$value';

    return '$value to ${following}';
  }
}

class Linkeds<G> extends Iterable<G> {
  Node<G>? start;
  Node<G>? chain;

  void push(G value) {
    start = Node(value: value, following: chain);
    chain ??= start;
  }

  void append(G value) {
    if (isEmpty) {
      push(value);
      return;
    }
    chain!.following = Node(value: value);
    chain = chain!.following;
  }

  Node<G>? nodeConnect(int index) {
    var currentNode = start;
    var currentIndex = 0;
    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.following;
      currentIndex += 1;
    }
    return currentNode;
  }

  Node<G> joinAfter(Node<G> node, G value) {
    if (chain == node) {
      append(value);
      return chain!;
    }
    node.following = Node(value: value, following: node.following);
    return node.following!;
  }

  G? pop() {
    final value = start?.value;
    start = start?.following;

    if (isEmpty) {
      chain = null;
    }
    return value;
  }
}
