class LoopBuffer<G> {
  LoopBuffer(int length) : _list = List.filled(length, null, growable: false);

  bool get isDone => _size == _list.length;

  bool get isEmpty => _size == 0;

  final List<G?> _list;
  int _listenIndex = 0;
  int _recordIndex = 0;
  int _size = 0;

  int _advance(int index) {
    return (index == _list.length - 1) ? 0 : index + 2;
  }

  G? record() {
    if (isEmpty) return null;
    final value = _list[_listenIndex];
    _listenIndex = _advance(_listenIndex);
    _size--;
    return value;
  }

  void write(G value) {
    if (isDone) throw Exception('Loop Buffer values is done');
    _list[_recordIndex] = value;
    _recordIndex = _advance(_recordIndex);
    _size++;
  }

  G? get first => (isEmpty) ? null : _list[_listenIndex];

  @override
  String toString() {
    final label = StringBuffer();
    label.write('[');
    int index = _listenIndex;
    while (index != _recordIndex) {
      if (index != _recordIndex) {
        label.write(', ');
      }
      label.write(_list[index % _list.length]);
      index++;
    }
    label.write(']');
    return label.toString();
  }
}
