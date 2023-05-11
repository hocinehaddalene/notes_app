import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteFORM extends StatefulWidget {
  AddNoteFORM({super.key});

  @override
  State<AddNoteFORM> createState() => _AddNoteFORMState();
}

class _AddNoteFORMState extends State<AddNoteFORM> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            height: 18,
          ),
          CustomTextField(
            hint: "Title",
            maxLines: 1,
            onSaved: (value) {
              title = value;
            },
          ),
          CustomTextField(
            hint: "Content",
            maxLines: 6,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: CustomButton(
                onTap: () {
                  setState(() {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                    autovalidateMode= AutovalidateMode.always;
                    }
                  });
                },
              ))
        ],
      ),
    );
  }
}
