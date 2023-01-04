import 'package:flutter/material.dart';

abstract class IFile {
  int getSize();
  Color getColor();
  Widget render(BuildContext context);
}
