import 'package:composite/core/interfaces/base/i_file.dart';
import 'package:composite/core/utils/size_converter.dart';
import 'package:flutter/material.dart';

class Directory extends StatelessWidget implements IFile {
  final String label;
  final bool isExpanded;
  final List<IFile> files = [];

  Directory(this.label, {super.key, this.isExpanded = false});

  void addFile(IFile file) {
    files.add(file);
  }

  @override
  Color getColor() {
    return Colors.transparent;
  }

  @override
  int getSize() {
    var sum = 0;

    for (final file in files) {
      sum += file.getSize();
    }
    return sum;
  }

  @override
  Widget render(BuildContext context) {
    return ExpansionTile(
      title: Text('$label (${FileSizeConverter.bytesToString(getSize())})'),
      initiallyExpanded: isExpanded,
      backgroundColor: getColor(),
      children: files.map((IFile file) => file.render(context)).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return render(context);
  }
}
