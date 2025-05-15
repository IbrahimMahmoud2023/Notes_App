import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/custom_text_filed.dart';
import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextFiled(hintText: 'Title'),
            SizedBox(height: 16),
            CustomTextFiled(hintText: 'Content', maxLines: 5),
            SizedBox(height: 32),
            CustomButton(),
            SizedBox(height: 16),

          ],
        ),
      ),
    );
  }
}


