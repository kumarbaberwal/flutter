import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text(
          'Animated Text',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedTextKit(
            //   animatedTexts: [
            //     RotateAnimatedText(
            //       'Hello',
            //       textStyle: const TextStyle(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 30,
            //           color: Colors.red),
            //     )
            //   ],
            // ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Kumar',
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30),
                    speed: const Duration(milliseconds: 400))
              ],
              // totalRepeatCount: 5,
              pause: const Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            const SizedBox(
              height: 40,
            ),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText('CLASS  REPRESENTATIVE',
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25))
            ])
          ],
        ),
      ),
    );
  }
}
