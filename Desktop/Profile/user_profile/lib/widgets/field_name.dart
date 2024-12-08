import 'package:flutter/material.dart';

class FieldName extends StatelessWidget {

   final String title;

  const FieldName({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Align(
        alignment:  Alignment.centerLeft,
        child: Text(
          title,
          style: const  TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ));
  }
}
