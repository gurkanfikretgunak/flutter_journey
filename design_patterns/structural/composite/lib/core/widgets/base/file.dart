import 'package:composite/core/interfaces/base/i_file.dart';
import 'package:composite/core/utils/size_converter.dart';
import 'package:flutter/material.dart';

class BaseFile extends StatelessWidget implements IFile {
  final String label;
  final int size;
  final IconData iconData;
  final Color color;

  const BaseFile(
      {super.key,
      required this.label,
      required this.size,
      required this.iconData,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return render(context);
  }

  @override
  Color getColor() {
    return color;
  }

  @override
  int getSize() {
    return size;
  }

  @override
  Widget render(BuildContext context) {
    return ListTile(
      title: Text(label),
      leading: Icon(iconData, color: color),
      trailing: Text(FileSizeConverter.bytesToString(size)),
      dense: true,
    );
  }
}
