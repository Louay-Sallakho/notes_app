import 'package:flutter/material.dart';

import 'notes_list_view.dart';
import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [CustomAppBar(title: 'Title',icon: Icons.search,), NotesListView()],
      ),
    );
  }
}


