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
