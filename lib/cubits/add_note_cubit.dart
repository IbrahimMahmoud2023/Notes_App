import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import 'package:notes_app/models/note_model.dart';

import '../constant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
 Color color = Color(0xFF88498f);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = await Hive.openBox<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
