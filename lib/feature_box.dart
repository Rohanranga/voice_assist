import 'package:flutter/material.dart';
import 'package:voice_assist_app/pallete.dart';

class FeatureBox extends StatelessWidget {
  final Color color;
  final String headtext;
  final String subtext;
  final String tooltext;
  const FeatureBox(
      {super.key,
      required this.color,
      required this.headtext,
      required this.subtext,
      required this.tooltext});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20).copyWith(
          left: 15,
        ),
        child: Center(
          child: Tooltip(
            preferBelow: true,
            message: tooltext,
            waitDuration: Durations.long1,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    headtext,
                    style: const TextStyle(
                      fontFamily: 'Cera Pro',
                      color: Pallete.blackColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  subtext,
                  style: const TextStyle(
                    fontFamily: 'Cera Pro',
                    color: Pallete.blackColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
