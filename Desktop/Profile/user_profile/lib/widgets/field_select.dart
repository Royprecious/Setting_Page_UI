import 'package:flutter/material.dart';
import 'package:user_profile/constants/colors.dart';
import 'package:user_profile/helper/helper_functions.dart';

class FieldSelect extends StatelessWidget {
  
    final String imagePath;
  final String name;

  const FieldSelect({super.key, required this.imagePath, required this.name});

      
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(8.0),
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
             ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox(
                height: 40,
                width: 40,
                child: Image.network(imagePath, fit: BoxFit.cover,),
                
              ),
             ),

             const SizedBox(width: 12),

              Text(name, style: const TextStyle(fontSize: 16),)
        ],
      ),

      const Icon(Icons.expand_more_outlined),
      ],)
    );
  }
}