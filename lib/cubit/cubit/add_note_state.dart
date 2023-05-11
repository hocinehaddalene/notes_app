part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSucces extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  String? errorMessage;
  AddNoteFailure({required String errorMessage});
}
