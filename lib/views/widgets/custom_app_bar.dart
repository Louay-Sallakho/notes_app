import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custome_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Notes',
              style: TextStyle(fontSize: 30),
            ),
            CustomSearchIcon()
          ],
        ),
      ],
    );
  }
}


