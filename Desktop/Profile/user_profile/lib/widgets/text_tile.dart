import 'package:flutter/material.dart';
import 'package:user_profile/constants/colors.dart';

class TextTile extends StatelessWidget {

  final String text;

  const TextTile ({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
      Container(
        padding: const EdgeInsets.all(12),
      height: 50,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        color: TColors.primary
      ),
      child:  Center(child: 
            Text(text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
      ),
    )
    ],);
  }
}