import 'package:flutter/material.dart';
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
              backColor: WidgetStatePropertyAll(
                Colors.grey.withOpacity(0.1),
              ),
              outBorder: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: const Icon(Icons.search),
            ),
          ),
        ],
      ),
      floatingActionButton: CustomIcon(
        size: 32,
        backColor: const WidgetStatePropertyAll(
          Colors.blue,
        ),
        outBorder: const WidgetStatePropertyAll(CircleBorder()),
        icon: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
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

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hintText: 'Title',
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextField(
            hintText: 'Content',
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 64),
          ),
          SizedBox(
            height: 100,
          ),
          CustomElevatedButton()
        ],
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: const WidgetStatePropertyAll(
            Color(0xff52EBD6),
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        child: const Text(
          'Add',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.contentPadding,
  });
  final String hintText;
  final EdgeInsetsGeometry? contentPadding;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xff52EBD6),
        ),
        contentPadding: contentPadding,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
