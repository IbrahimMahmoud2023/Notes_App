import 'package:flutter/material.dart';

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
      home: Scaffold(body: NotesViewBody()),
    );
  }
}
