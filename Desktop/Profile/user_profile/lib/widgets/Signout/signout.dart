import 'package:flutter/material.dart';
import 'package:user_profile/constants/colors.dart';
import 'package:user_profile/helper/helper_functions.dart';

class Signout extends StatelessWidget {
  final String name;

  const Signout({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(18.0),
        width: THelperFunctions.screenWidth(context) * 0.7,
        height: 65,
        decoration: BoxDecoration(
            color: TColors.greysecondary,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: TColors.greyPrimary)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(width: 12),
                Text(
                  name,
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
            const Icon(Icons.logout_outlined)
          ],
        ));
  }
}
