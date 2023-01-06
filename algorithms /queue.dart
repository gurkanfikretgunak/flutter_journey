import 'loop_buffer.dart';

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

class QueueLoopBuffer<G> implements Queue<G> {
  final LoopBuffer _loopBuffer;

  QueueLoopBuffer(int length) : _loopBuffer = LoopBuffer<G>(length);

  @override
  G? dequeue() {
    // TODO: implement dequeue
    throw UnimplementedError();
  }

  @override
  bool enqueue(G queueValue) {
    // TODO: implement enqueue
    throw UnimplementedError();
  }

  @override
  // TODO: implement first
  G? get first => throw UnimplementedError();

  @override
  // TODO: implement isEmpty
  bool get isEmpty => throw UnimplementedError();
}
