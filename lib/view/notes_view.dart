import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('welcomeback Rama'))),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Container(color: Colors.purpleAccent, height: 140),
      ),
    );
  }
}
