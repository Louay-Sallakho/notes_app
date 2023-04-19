import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custome_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            Text(
              title ,
              style: const TextStyle(fontSize: 30),
            ),
            CustomSearchIcon(icon: icon),
          ],
        ),
      ],
    );
  }
}
