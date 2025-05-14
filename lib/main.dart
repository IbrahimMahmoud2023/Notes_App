import 'package:flutter/material.dart';
import 'package:notes_app/Views/notes_views.dart';

import 'Views/widgets/notes_view_body.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
        fontFamily: 'Poppins'
      ),
      home: Scaffold(
          body: NotesViews()
      ),
    );
  }
}
