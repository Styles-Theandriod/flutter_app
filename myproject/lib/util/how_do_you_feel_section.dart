import 'package:flutter/material.dart';

import 'how_do_you_feel_tile.dart';

class HowDoYouFeelSection extends StatelessWidget {
  const HowDoYouFeelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'How do you feel?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
          ],
        ),
    
        SizedBox(height: 25),
    
        // 4 different faces
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // bad
            HowDoYouFeelTile(emoji: '😩', label: 'Bad'),
    
            // fine
            HowDoYouFeelTile(emoji: '🙂', label: 'Fine'),
    
            // well
            HowDoYouFeelTile(emoji: '😀', label: 'Well'),
    
            // excellent
            HowDoYouFeelTile(emoji: '🥳', label: 'Excellent'),
          ],
        ),
      ],
    );
  }
}
