import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_button.dart';
import 'package:notes_app/widget/custom_text_field.dart';

class ModalBottomSheetBody extends StatelessWidget {
  const ModalBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 12),
            CustomTextField(hint: 'Content', maxLines: 5),
            SizedBox(height: 50),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
