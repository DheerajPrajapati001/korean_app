import 'package:flutter/material.dart';
import 'package:korean_app/utils/my_colors.dart';

class MainGreyBorderCont extends StatelessWidget {

  final Widget widget;

  const MainGreyBorderCont({Key key, this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: MyColors.whiteClr,
          boxShadow: [
            BoxShadow(
                offset: Offset(0,0),
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                spreadRadius: 4
            ),
          ],
          border: Border.all(
            color: MyColors.greyBorderClr,
          )
      ),
      child: widget,
    );
  }
}
