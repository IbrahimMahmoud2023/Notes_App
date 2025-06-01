import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/widgets/custom_app_bar.dart';
import 'package:notes_app/cubits/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'custom_text_filed.dart';
import 'edit_note_color_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  content: Text('ُNote Edit Successfully'),
                  backgroundColor: Colors.green,
                  duration: Duration(seconds: 3),
                ),
              );
            },
            text: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: 32),
          CustomTextFiled(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          SizedBox(height: 16),
          CustomTextFiled(
            onChanged: (value) {
              content = value;
            },
            hintText: widget.note.subTitle,
            maxLines: 5,
          ),
          const SizedBox(height: 16),
          EditNoteColorListView(note: widget.note),
        ],
      ),
    );
  }
}
