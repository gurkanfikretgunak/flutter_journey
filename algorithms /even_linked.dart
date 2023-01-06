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

abstract class Linkeds<G> {
  Node<G>? start;
  Node<G>? chain;
  bool get isEmpty;
  void append(G value);
  void push(G value);
  G? pop();
  G? removeLastOne();
}
