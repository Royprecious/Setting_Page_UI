import 'package:flutter/material.dart';

class THelperFunctions{
   
   static double screenWidth(context){
        
        return MediaQuery.of(context).size.width;
   }

   static double screenHeight(context){
     
     return MediaQuery.of(context).size.height;
   }
   
}