import 'package:flutter/material.dart';
import 'package:korean_app/utils/my_colors.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: MyColors.dividerClr,
      thickness: 1.5,
    );
  }
}
