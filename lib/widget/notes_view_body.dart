import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(children: [CustomAppBar()]),
      ),
    );
  }
}
