import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubit/AddNoteCubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widget/colors_list_view.dart';
import 'package:notes_app/widget/custom_button.dart';
import 'package:notes_app/widget/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNotesLoading ? true : false,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  CustomTextField(
                    hint: 'Title',
                    onSaved: (value) {
                      title = value;
                    },
                  ),
                  const SizedBox(height: 12),
                  CustomTextField(
                    hint: 'Content',
                    maxLines: 5,
                    onSaved: (value) {
                      subTitle = value;
                    },
                  ),
                  const SizedBox(height: 24),
                  ColorsListView(),
                  const SizedBox(height: 40),
                  state is AddNotesLoading
                      ? CircularProgressIndicator(
                          color: Colors.deepPurpleAccent,
                        )
                      : CustomButton(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();

                              var currentDate = DateTime.now();
                              var formattedCurrentDate = DateFormat(
                                'dd MMM yyyy',
                              ).format(currentDate);
                              var addNote = NoteModel(
                                title: title!,
                                subTitle: subTitle!,
                                date: formattedCurrentDate,
                                color: Colors.pink.shade200.toARGB32(),
                              );
                              BlocProvider.of<AddNoteCubit>(
                                context,
                              ).addNote(addNote);
                            } else {
                              autovalidateMode = AutovalidateMode.always;
                              setState(() {});
                            }
                          },
                        ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
