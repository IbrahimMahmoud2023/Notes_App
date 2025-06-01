import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../models/note_model.dart';
import 'color_list_view.dart';

class EditNoteColorListView extends StatefulWidget {
  const EditNoteColorListView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorListView> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorListView> {

  int currentIndex = 0 ;
  @override
  void initState() {
    currentIndex  = Kcolors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Kcolors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = Kcolors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: Kcolors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}

