import 'queue.dart';

class TreeNode<G> {
  TreeNode(this.value);
  G value;
  List<TreeNode<G>> children = [];
  void add(TreeNode<G> child) {
    children.add(child);
  }

  void forEachLevelOrder(void Function(TreeNode<G> node) tracking) {
    final queue = QueueStacks<TreeNode<G>>();
    tracking(this);
    children.forEach(queue.enqueue);
    var node = queue.dequeue();
    while (node != null) {
      tracking(node);
      node.children.forEach(queue.enqueue);
      node = queue.dequeue();
    }
  }

  void forEachinFirst(void Function(TreeNode<G> node) tracking) {
    tracking(this);
    for (final child in children) {
      child.forEachinFirst(tracking);
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
