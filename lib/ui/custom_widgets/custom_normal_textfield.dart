import 'package:flutter/material.dart';
import 'package:korean_app/utils/my_colors.dart';

class CustomNormalTextField extends StatefulWidget {
  @override
  _CustomNormalTextFieldState createState() => _CustomNormalTextFieldState();
}

class _CustomNormalTextFieldState extends State<CustomNormalTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.1,
      decoration: BoxDecoration(
          color: MyColors.lightContClr,
        border: Border.all(
          color: MyColors.greyBorderClr
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none
          ),
        ),
      ),
    );
  }
}
