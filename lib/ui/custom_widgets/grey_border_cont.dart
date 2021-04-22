import 'package:flutter/material.dart';
import 'package:korean_app/utils/my_colors.dart';


class GreyBorderCont extends StatelessWidget {

  final Widget widget;

  const GreyBorderCont({Key key, this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: MyColors.whiteClr,
          border: Border.all(
            color: MyColors.greyBorderClr,
          )
      ),
      child: widget,
    );
  }
}
