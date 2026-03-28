part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

final class AddNotesInitial extends AddNoteState {}

final class AddNotesLoading extends AddNoteState {}

final class AddNotesSuccess extends AddNoteState {}

final class AddNotesFailure extends AddNoteState {
  final String errorMessage;

  AddNotesFailure({required this.errorMessage});
}
