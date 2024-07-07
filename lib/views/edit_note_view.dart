import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Edit Note',
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
              iconData: Icons.check,
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                hintText: 'Title',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hintText: '\n\nContent',
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
