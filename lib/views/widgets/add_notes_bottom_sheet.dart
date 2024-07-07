import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_elevated_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
            SizedBox(
              height: 100,
            ),
            CustomElevatedButton(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
