import 'package:flutter/material.dart';

class CustomGreenButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final Color color;

  const CustomGreenButton({super.key,  required this.onTap,required this.buttonText, required this.color,}) ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
       color:color,
        width: 330,
        height: 36,
        child: Center(child: Text(buttonText,style:const TextStyle(fontSize: 14),)),
      ),
    );
  }
}