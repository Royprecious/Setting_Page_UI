import 'package:flutter/material.dart';
import 'package:user_profile/constants/colors.dart';

class CustomToggle extends StatefulWidget {
  const CustomToggle({super.key});

  @override
  State<CustomToggle> createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {

  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch(
        value: isToggled,
       onChanged: (value){
             setState(() {
               isToggled = value;
             });
       },
       activeColor: isToggled ? TColors.primary : TColors.greyPrimary,
       ),
    );
  }
}