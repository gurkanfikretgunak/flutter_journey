abstract class Queue<G> {
  bool enqueue(G queueValue);
  G? dequeue();
  bool get isEmpty;
  G? get first;
}

class Queues<G> implements Queue<G> {
  @override
  bool get isEmpty => _queues.isEmpty;

  @override
  G? get first => _queues.first;

  final _queues = [];

  @override
  G? dequeue() => (isEmpty) ? null : _queues.removeAt(0);

  @override
  bool enqueue(G queueValue) {
    _queues.add(queueValue);
    return true;
  }
}
