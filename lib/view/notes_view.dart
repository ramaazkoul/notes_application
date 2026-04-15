import 'package:flutter/material.dart';
import 'package:notes_app/widget/modal_bottom_sheet_body.dart';
import 'package:notes_app/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: const Color.fromARGB(255, 51, 51, 51),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const ModalBottomSheetBody();
            },
          );
        },
        backgroundColor: const Color.fromARGB(255, 180, 231, 231),
        child: Icon(Icons.add, size: 30, color: Colors.black),
      ),
      body: const NotesViewBody(),
    );
  }
}

