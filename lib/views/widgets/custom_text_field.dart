import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: 'Title',
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
