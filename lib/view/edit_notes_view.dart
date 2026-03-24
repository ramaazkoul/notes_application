import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app_bar.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNotesViewBody(),
    );
  }
}
class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
      ],
    );
  }
}