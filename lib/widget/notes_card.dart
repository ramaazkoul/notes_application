import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Flutter tips',
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'Build your career with tharwat sami',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withValues(alpha: 0.5),
                  ),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    size: 24,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Text(
              'Dec 8,2026',
              style: TextStyle(color: Colors.black.withValues(alpha: 0.5)),
            ),
          ],
        ),
      ),
    );
  }
}
