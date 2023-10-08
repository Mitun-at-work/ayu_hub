import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  final String animatedText = 'This is an example of animated text in Flutter. '
      'Once the animation is finished, the text will remain fixed.';

  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
      child: Center(
        // ignore: deprecated_member_use
        child: TypewriterAnimatedTextKit(
          text: [animatedText],
          speed: const Duration(milliseconds: 200),
          // totalRepeatCount: 1, // Animation plays once
          displayFullTextOnTap: true,
          stopPauseOnTap: true, textStyle: const TextStyle(),
        ),
      ),
    );
  }
}
