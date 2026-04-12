import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubit/AddNoteCubit/add_note_cubit.dart';
import 'package:notes_app/widget/add_note_form.dart';

class ModalBottomSheetBody extends StatelessWidget {
  const ModalBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNotesFailure) {
              print('failed to Add note ${state.errorMessage}');
            }
            if (state is AddNotesSuccess) {
              Navigator.pop(context);
              print('Added note successfuly');
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNotesLoading ? true : false,
              child: AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
