import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

import 'add_note_form.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddModalBottomSheet extends StatelessWidget {
   AddModalBottomSheet();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromARGB(31, 0, 166, 231)),
      child: SingleChildScrollView(
        child: AddNoteFORM(),
      ),
    );
  }
}
