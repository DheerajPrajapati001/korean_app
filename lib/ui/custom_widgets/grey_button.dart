import 'package:flutter/material.dart';
import 'package:korean_app/utils/my_colors.dart';

// ignore: must_be_immutable
class GreyButton extends StatelessWidget {

  final String text;
  var onTap;

   GreyButton({Key key, this.text,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: MediaQuery.of(context).size.width*.75,
      height: 45,
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: onTap,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: MyColors.greyBorderClr,
            width: 1.5
          ),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(text,style: TextStyle(
              fontSize: MediaQuery.of(context).size.width*.04,
              fontWeight: FontWeight.bold,
              color: MyColors.blackClr
          ),),
        ),
        color: MyColors.greyClr,
      ),
    );
  }
}
