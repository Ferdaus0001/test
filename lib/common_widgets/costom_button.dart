import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color buttonColor;
  final double borderRadius;
  final double width;
  final Color titleColor;
  final double fontSize;
  final VoidCallback? onTap;  

  const CustomButton({
    Key? key,
    required this.title,
    required this.buttonColor,
    required this.borderRadius,
    required this.width,
    required this.titleColor,
    required this.fontSize,
    this.onTap, required int fontsize, required int white,  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,  
      child: Container(
        height: 55,
        alignment: Alignment.center,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: Colors.grey),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: titleColor,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
