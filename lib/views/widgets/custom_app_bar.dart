import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.title,required this.icon});
  final String? title;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            height: (50),
          ),
          Text(title!,style:TextStyle(fontSize: 30),),
          Spacer(),
          CustomSearchIcon(icon: icon,)
        ],
      ),
    );
  }
}