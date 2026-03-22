import 'package:flutter/material.dart';
import 'package:notes_app/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 180, 231, 231),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add, size: 30, color: Colors.black),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
