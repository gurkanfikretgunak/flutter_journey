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
}
