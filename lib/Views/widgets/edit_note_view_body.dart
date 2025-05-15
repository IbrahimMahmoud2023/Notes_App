import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/custom_app_bar.dart';

import 'custom_text_filed.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(text: 'Edit Note', icon: Icons.check),
          SizedBox(height: 32),
          CustomTextFiled(hintText: 'Title'),
          SizedBox(height: 16),
          CustomTextFiled(hintText: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
