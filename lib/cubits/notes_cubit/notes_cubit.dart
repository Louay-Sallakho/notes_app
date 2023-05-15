import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    try {
      var notesBox = Hive.box(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList() as List<NoteModel>;
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailuer(e.toString()));
    }
  }
}
