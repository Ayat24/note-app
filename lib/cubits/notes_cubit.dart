import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/note_model.dart';
import 'package:meta/meta.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesCubit());

  addNote(NoteModel note) {}
}
