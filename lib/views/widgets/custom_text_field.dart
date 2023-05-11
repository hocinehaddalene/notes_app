import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextField extends StatelessWidget {
 CustomTextField({required this.hint,this.maxLines= 4,this.onSaved});
 final String? hint;
 final int? maxLines;
 final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "the value is required";
          }
        },
        maxLines: maxLines,
        decoration: InputDecoration(          
          labelText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
        ),
      ),
    );
  }
}