import 'queue.dart';

class TreeNode<G> {
  TreeNode(this.value);
  G value;
  List<TreeNode<G>> children = [];
  void add(TreeNode<G> child) {
    children.add(child);
  }

  void forEachLevelOrder(void Function(TreeNode<G> node) move) {
    final queue = QueueStacks<TreeNode<G>>();
    move(this);
    children.forEach(queue.enqueue);
    var node = queue.dequeue();
    while (node != null) {
      move(node);
      node.children.forEach(queue.enqueue);
      node = queue.dequeue();
    }
  }

  void forEachinFirst(void Function(TreeNode<G> node) move) {
    move(this);
    for (final child in children) {
      child.forEachinFirst(move);
    }
  }

  TreeNode? search(G value) {
    TreeNode? result;
    forEachLevelOrder((node) {
      if (node.value == value) {
        result = node;
      }
    });
    return result;
  }
}
