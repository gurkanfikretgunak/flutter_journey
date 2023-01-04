import 'package:composite/core/widgets/base/file.dart';
import 'package:flutter/material.dart';

class ImageFile extends BaseFile {
  const ImageFile({
    super.key,
    required super.label,
    required super.color,
    required super.size,
  }) : super(iconData: Icons.photo);
}
