import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/views/widgets/add_notes_bottom_sheet.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';
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
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: CustomIcon(
              onPressed: () {},
              backColor: WidgetStatePropertyAll(
                Colors.grey.withOpacity(0.1),
              ),
              outBorder: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              iconData: Icons.search,
            ),
          ),
        ],
      ),
      floatingActionButton: CustomIcon(
        size: 32,
        backColor: const WidgetStatePropertyAll(
          kPrimaryColor,
        ),
        outBorder: const WidgetStatePropertyAll(CircleBorder()),
        iconData: Icons.add,
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          itemCount: noteColors.length,
          itemBuilder: (context, index) {
            return NoteCard(
              noteColor: noteColors[index],
            );
          },
        ),
      ),
    );
  }
}
