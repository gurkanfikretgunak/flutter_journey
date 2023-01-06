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

class QueueStacks<G> implements Queue<G> {
  final _leftStack = <G>[];
  final _rightStack = <G>[];

  @override
  bool enqueue(G value) {
    _rightStack.add(value);
    return true;
  }

  @override
  G? dequeue() {
    if (_leftStack.isEmpty) {
      _leftStack.addAll(_rightStack.reversed); // 1
      _rightStack.clear(); // 2
    }
    if (_leftStack.isEmpty) return null;
    return _leftStack.removeLast();
  }

  @override
  bool get isEmpty => _leftStack.isEmpty && _rightStack.isEmpty;

  @override
  G? get first => _leftStack.isNotEmpty ? _leftStack.last : _rightStack.first;

  @override
  String toString() {
    final mixer = [
      ..._leftStack.reversed,
      ..._rightStack,
    ].join(', ');
    return '[$mixer]';
  }
}

class QueueLoopBuffer<G> implements Queue<G> {
  final LoopBuffer _loopBuffer;

  QueueLoopBuffer(int length) : _loopBuffer = LoopBuffer<G>(length);

  @override
  G? dequeue() => _loopBuffer.record();

  @override
  bool enqueue(G queueValue) {
    if (queueValue != null && _loopBuffer.isDone) {
      return false;
    }
    _loopBuffer.write(queueValue);
    return true;
  }

  @override
  G? get first => _loopBuffer.first;

  @override
  bool get isEmpty => _loopBuffer.isEmpty;

  @override
  String toString() => _loopBuffer.toString();
}
