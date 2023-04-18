import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const  CustomTextField({super.key, required this.hint,   this.maxLines = 1});
  final String hint;
   final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hint,
          
          border: buildBorder(),
          focusedBorder: buildBorder(color: kPrimaryColor),
          enabledBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 2,
        color: color ?? Colors.white,
      ),
    );
  }
}
