import 'package:flutter/material.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_strings.dart';


class DownArrowButton extends StatelessWidget {
  const DownArrowButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 50,
          // ignore: deprecated_member_use
          child: RaisedButton(
            onPressed: (){},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                )
            ),
            child: Center(
              child: Text(MyStrings.availableFunds,style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width*.05,
                  fontWeight: FontWeight.bold,
                  color: MyColors.whiteClr
              ),),
            ),
            color: MyColors.lightGreenClr,
          ),
        ),
        Container(
          height: 25,
          width: 45,
          decoration: BoxDecoration(
              color: MyColors.lightGreenClr,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10)
              )
          ),
          child: Center(
            child: Icon(Icons.keyboard_arrow_down,color: MyColors.whiteClr,),
          ),
        )
      ],
    );
  }
}