import 'package:flutter/material.dart';
import 'package:korean_app/utils/my_colors.dart';

class DarkGreenButton extends StatelessWidget {
  final String text;
  var onTap;

  DarkGreenButton({Key key, this.text, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*.75,
      height: 45,
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: onTap,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('N',style: TextStyle(
                fontSize: MediaQuery.of(context).size.width*.05,
                fontWeight: FontWeight.bold,
                color: MyColors.whiteClr
            ),),
            Text(text,style: TextStyle(
                fontSize: MediaQuery.of(context).size.width*.05,
                fontWeight: FontWeight.bold,
                color: MyColors.whiteClr
            ),),
            Text('N',style: TextStyle(
                fontSize: MediaQuery.of(context).size.width*.05,
                fontWeight: FontWeight.bold,
                color: MyColors.transparent
            ),),
          ],
        ),
        color: MyColors.darkGreenClr,
      ),
    );
  }
}
