import 'package:flutter/material.dart';


class GenderTile extends StatelessWidget {

   final Icon icon;
  final Widget gender;

  const GenderTile({super.key, required this.icon, required this.gender});



  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         icon,
       gender
      ],
    );
  }
}
