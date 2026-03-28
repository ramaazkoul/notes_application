part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

final class NotesInitial extends AddNoteState {}

final class NotesLoading extends AddNoteState {}

final class NotesSuccess extends AddNoteState {}

final class NotesFailure extends AddNoteState {
  final String errorMessage;

  NotesFailure({required this.errorMessage});
}
