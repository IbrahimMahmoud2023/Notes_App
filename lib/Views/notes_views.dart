import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/Views/widgets/notes_view_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        ),
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) {
            return AddNoteBottomSheet();
          },);
        },
        child: Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}



