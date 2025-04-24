import 'package:flutter/material.dart';

class ButtonFilter extends StatelessWidget {
  final String title;
  const ButtonFilter({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        backgroundColor: const Color(0xffccdee9),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 4, // keep this small for compact layout
        ),
        minimumSize: Size(0, 32), // or tweak height as needed
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xff000000),
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
    );
  }
}
