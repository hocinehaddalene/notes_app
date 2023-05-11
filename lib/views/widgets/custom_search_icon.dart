import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomSearchIcon extends StatelessWidget {
   CustomSearchIcon({required this.icon});
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.1),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Center(
        child: Icon(icon))
    );
  }
}