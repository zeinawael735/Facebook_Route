import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  Color bgColor;
  String text;
  Color textColor;
  double horizontalPadding;
  void Function()? onPressed;
  new({super.key, required this.bgColor, required this.text,required this.textColor,required this.horizontalPadding,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFF1877F2)),
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
      ),

      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: horizontalPadding),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: .bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
