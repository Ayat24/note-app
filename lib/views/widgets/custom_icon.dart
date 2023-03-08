import 'package:flutter/material.dart';
 import 'custom_icon.dart';
 class CustomSearchIcon extends StatelessWidget{
const CustomSearchIcon({super.key})
Widget build(BuildContext context){
  return Container(
    height: 46,
    width: 46,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity((.05)),
      borderRadius:BorderRadius.circular(16)
      )
    child: const Center(
      child: Icon(
        Icon.search
        size: 28,
        ),
  ),
  );

}

  
  }
