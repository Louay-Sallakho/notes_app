import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNotesView();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Container(
          padding:
              const EdgeInsets.only(top: 24, right: 16, left: 16, bottom: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16,
              ),
              color: const Color(0xffffcd7a)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  'Flutter Tips',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                      "Don't let your flutter skills flutter away, alway work on sharpining your skills",
                      style: TextStyle(
                          fontSize: 18, color: Colors.black.withOpacity(.6))),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.trash),
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, right: 16),
                child: Text(
                  "May 16, 2022",
                  style: TextStyle(color: Colors.black.withOpacity(.6)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
