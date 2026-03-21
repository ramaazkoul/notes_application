import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [CustomAppBar(), NotesCard()]),
      ),
    );
  }
}

class NotesCard extends StatelessWidget {
  const NotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 200, 187, 74),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text('Flutter tips', style: TextStyle(color: Colors.black)),
            subtitle: Text(
              'Build your career with tharwat sami',
              style: TextStyle(color: Colors.black.withValues(alpha: 0.5)),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black),
            ),
          ),
          Text(
            '30/12/2026',
            style: TextStyle(color: Colors.black.withValues(alpha: 0.5)),
          ),
        ],
      ),
    );
  }
}
