import 'package:flutter/material.dart';
import 'package:user_profile/constants/colors.dart';
import 'package:user_profile/constants/text.dart';
import 'package:user_profile/helper/helper_functions.dart';
import 'package:user_profile/widgets/Gender/gender_tile.dart';

class GenderPreference extends StatelessWidget {
  const GenderPreference({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: THelperFunctions.screenWidth(context),
      height: 80,
      decoration: BoxDecoration(
          color: TColors.greysecondary,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(color: TColors.greyPrimary)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GenderTile(
            icon: Icon(
              Icons.female_outlined,
              size: 36,
              color: TColors.primary,
            ),
            gender: Text(
              TText.female,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: TColors.primary),
            ),
          ),
          Text(
            '|',
            style: TextStyle(fontSize: 40, color: TColors.greyPrimary, fontWeight: FontWeight.w200,),
          ),
          GenderTile(
            icon: Icon(
              Icons.male_outlined,
              size: 36,
              color: TColors.greyPrimary,
            ),
            gender: Text(
              TText.male,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: TColors.greyPrimary),
            ),
          ),
          Text(
            '|',
            style: TextStyle(fontSize: 40, color: TColors.greyPrimary, fontWeight: FontWeight.w200,),
          ),
          GenderTile(
            icon: Icon(
              Icons.transgender_outlined,
              size: 36,
              color: TColors.greyPrimary,
            ),
            gender: Text(
              TText.trans,
              style: TextStyle(
                 fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: TColors.greyPrimary),
            ),
          ),
          Text(
            '|',
            style: TextStyle(fontSize: 40, color: TColors.greyPrimary, fontWeight: FontWeight.w200,),
          ),
          GenderTile(
            icon: Icon(
              Icons.transgender_outlined,
              size: 36,
              color: TColors.greyPrimary,
            ),
            gender: Text(
              TText.gay,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: TColors.greyPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
