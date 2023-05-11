import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: CustomAppBar(title: "Edit Note",icon: Icons.check,),
          
        ),
        CustomTextField(hint: "Title",maxLines: 1,),
        CustomTextField(hint: "Content",maxLines: 7,),

        
      ],
    ) ;
  }
}