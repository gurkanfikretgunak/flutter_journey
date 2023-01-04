import 'package:composite/core/utils/directory.dart';
import 'package:composite/view/widgets/audio_file.dart';
import 'package:flutter/material.dart';

class FileView extends StatelessWidget {
  const FileView({super.key});

  Widget _buildMediaDirectory() {
    final audioDirectory = Directory('Audio');
    audioDirectory.addFile(const AudioFile(
        label: 'test_audio-01.wav', color: Colors.red, size: 12321313));
    audioDirectory.addFile(const AudioFile(
        label: 'test_audio-02.mp4', color: Colors.black, size: 12321300));
    final mediaDirectory = Directory(
      'Media Files',
      isExpanded: false,
    );
    mediaDirectory.addFile(audioDirectory);
    return mediaDirectory;
  }

  @override
  Widget build(BuildContext context) {
    return Material(child: _buildMediaDirectory());
  }
}
