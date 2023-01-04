import 'package:composite/core/widgets/base/file.dart';
import 'package:flutter/material.dart';

class AudioFile extends BaseFile {
  const AudioFile({
    super.key,
    required super.label,
    required super.color,
    required super.size,
  }) : super(iconData: Icons.audio_file);
}
