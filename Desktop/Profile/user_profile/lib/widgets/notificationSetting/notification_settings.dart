import 'package:flutter/material.dart';
import 'package:user_profile/constants/colors.dart';
import 'package:user_profile/helper/helper_functions.dart';
import 'package:user_profile/widgets/toggle.dart';

class NotificationSettings extends StatelessWidget {

  final Widget icon;
  final String name;

  const NotificationSettings({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      width: THelperFunctions.screenWidth(context),
      height: 65,
      decoration:  BoxDecoration(
        color: TColors.greysecondary,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: TColors.greyPrimary)
        ),
      child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(
        children: [
            icon,

             const SizedBox(width: 12),

              Text(name, style: const TextStyle(fontSize: 16),)
        ],
      ),

      const CustomToggle(),
      ],)
    );
  }
}