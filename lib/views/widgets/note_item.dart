import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  NoteItem();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return  const EditNoteView();
        }));
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(12, 12, 12, 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 209, 142, 42)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Flutter tips",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              subtitle: Text(
                "learn how to build your carreer with hocine haddalene",
                style: TextStyle(color: Color.fromRGBO(80, 80, 80, 1)),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    size: 37,
                  )),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            Text(
              "21 may 2023",
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
