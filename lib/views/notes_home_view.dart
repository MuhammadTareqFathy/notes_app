import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar_icon.dart';

class NotesHomeView extends StatelessWidget {
  const NotesHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notes',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        actions: const [
          CustomAppBarIcon(),
        ],
      ),
    );
  }
}
