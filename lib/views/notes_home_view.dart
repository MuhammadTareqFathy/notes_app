import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar_icon.dart';
import 'package:notes_app/views/widgets/note_card.dart';

class NotesHomeView extends StatelessWidget {
  NotesHomeView({super.key});
  final List<Color> noteColors = [
    const Color(0xffFFCD79),
    const Color(0xffE7E895),
    const Color(0xff76D6EE),
    const Color(0xffD59CD9),
    Colors.amber
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Notes',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        actions: const [
          CustomAppBarIcon(),
        ],
      ),
      body: ListView.builder(
        itemCount: noteColors.length,
        itemBuilder: (context, index) {
          return NoteCard(
            noteColor: noteColors[index],
          );
        },
      ),
    );
  }
}
