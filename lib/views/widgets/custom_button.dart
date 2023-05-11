import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.onTap});
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color.fromARGB(31, 0, 166, 231)),
        width: double.infinity,
        height: 30,
        child: GestureDetector(
          child: Center(
              child: Text(
            "Add",
            style: TextStyle(fontSize: 16),
          )),
        ),
      ),
    );
  }
}
