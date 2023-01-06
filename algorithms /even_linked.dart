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

class EvenLinkeds<G> extends Iterable<G> implements Linkeds<G> {
  @override
  Node<G>? start;

  @override
  Node<G>? chain;

  @override
  bool get isEmpty => start == null;

  @override
  void append(G value) {
    final newNode = Node(value: value, following: chain);

    if (isEmpty) {
      start = newNode;
    } else {
      start!.following = newNode;

      start?.following ??= newNode;
    }
    start = newNode;
  }

  @override
  void push(G value) {
    final newNode = Node(value: value, following: start);

    if (isEmpty) {
      start = newNode;
    } else {
      start!.following = newNode;

      start?.following ??= newNode;
    }
    start = newNode;
  }

  @override
  G? pop() {
    if (isEmpty) return null;

    final value = start?.value;

    if (start?.following == null) {
      start = null;
      chain = null;
      return value;
    }

    start = start?.following;
    start?.following = null;

    return value;
  }

  @override
  G? removeLastOne() {
    if (chain?.following == null) return pop();

    final value = start?.value;

    start = chain?.following;
    start?.following = null;

    return value;
  }

  @override
  Iterator<G> get iterator => _LinkedsIterator(this);

  @override
  String toString() => '[${join(', ')}]';
}

class _LinkedsIterator<G> implements Iterator<G> {
  _LinkedsIterator(EvenLinkeds<G> list) : _list = list;
  final EvenLinkeds<G> _list;
  Node<G>? _currentNode;
  bool _firstPass = true;

  @override
  G get current => _currentNode!.value;

  @override
  bool moveNext() {
    if (_list.isEmpty) return false;
    if (_firstPass) {
      _currentNode = _list.start;
      _firstPass = false;
    } else {
      _currentNode = _currentNode?.following;
    }
    return _currentNode != null;
  }
}
