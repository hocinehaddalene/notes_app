import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_modal_bottom_sheet.dart';
import 'package:notes_app/views/widgets/note_view_body.dart';


class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          context: context, builder: (context) {

          return AddModalBottomSheet();
        });


      }, child: Icon(Icons.add),),
      body: NoteViewBody(),
      
    
    );
  }
}