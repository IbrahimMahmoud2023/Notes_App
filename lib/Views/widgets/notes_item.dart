import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Views/edit_new_view.dart';
import 'package:notes_app/Views/widgets/edit_note_view_body.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNewView();
        },));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24, left: 16),
        decoration: BoxDecoration(
            color: Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(

              title: Text('Flutter tips',style: TextStyle(color: Colors.black,fontSize: 26),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16
                ,bottom: 16),
                child: Text('build your career with ibrahim mahmoud',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 16),),
              ),
              trailing: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.trash,color: Colors.black,size: 24,),)
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text('may15 ,2025',style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 16),),
            )
          ],
        ),
      ),
    );
  }
}