import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubit/NotesCubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/edit_notes_view.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Color(note.color),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return EditNotesView(note: note);
                        },
                      ),
                    );
                  },
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    note.title,
                    style: TextStyle(fontSize: 26, color: Colors.black),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      note.subTitle,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withValues(alpha: 0.5),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    size: 24,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Text(
            note.date,
            style: TextStyle(color: Colors.black.withValues(alpha: 0.5)),
          ),
        ],
      ),
    );
  }
}
