import 'package:flutter/material.dart';
import 'package:notes_app/widget/search_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Notes', style: TextStyle(fontSize: 28)),
        SearchButton(),
      ],
    );
  }
}
