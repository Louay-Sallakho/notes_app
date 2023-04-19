import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [CustomAppBar(title: "Edit Notes", icon: Icons.check)],
      ),
    );
  }
}
