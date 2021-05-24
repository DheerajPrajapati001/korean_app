import 'package:flutter/material.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_strings.dart';



class CustomClrButton extends StatelessWidget {

  final String text;

  const CustomClrButton({
    Key key, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColors.iconClr
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text,style: TextStyle(color: MyColors.whiteClr,fontSize: MediaQuery.of(context).size.width*.05),),
            Icon(Icons.arrow_forward_ios_outlined,color: MyColors.whiteClr,size: 20,)
          ],
        ),
      ),
    );
  }
}