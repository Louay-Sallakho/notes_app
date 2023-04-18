// ignore: file_names

import 'package:flutter/cupertino.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding:const  EdgeInsets.only(top: 10),
          itemBuilder: (context, index) {
            return const NoteItem();
          }),
    );
  }
}
