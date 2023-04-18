import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: const [
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: "Title",
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextField(
            hint: "content",
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
