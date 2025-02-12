import 'package:flutter/material.dart';

import 'emoticon_face.dart';

class HowDoYouFeelTile extends StatelessWidget {
  const HowDoYouFeelTile({super.key, required this.emoji, required this.label});

  final String emoji;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        EmoticonFace(emoticonFace: emoji),
        //
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
