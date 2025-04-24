import 'package:flutter/material.dart';

class StatusBox extends StatelessWidget {
  const StatusBox(
      {super.key,
      required this.title,
      required this.color,
      required this.textColor});
  final String title;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 11,
        left: 11,
        top: 8,
        bottom: 6,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          color: textColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
