part of 'notes_cubit.dart';

abstract class NotesState {}

class AddNoteInitial extends NotesState {}

class AddNoteLoading extends NotesState {}

class AddNoteSuccess extends NotesState {}

class AddNoteSuccess extends NotesState {
  final String errMessage;
  AddNoteFailure(this.errMessage);
}
