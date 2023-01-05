class Stack<G> {
  Stack() : _box = <G>[];
  Stack.of(Iterable<G> values) : _box = List<G>.of(values);
  final List<G> _box;

  void push(G value) => _box.add(value);

  G pop() => _box.removeLast();

  G removeByIndex(int valueIndex) => _box.removeAt(valueIndex);

  G get peek => _box.last;

  int get totalLength => _box.length;

  Iterable<G> get reversedValue => _box.reversed;

  bool get isEmpty => _box.isEmpty;

  bool get isNotEmpty => !isEmpty;
}
