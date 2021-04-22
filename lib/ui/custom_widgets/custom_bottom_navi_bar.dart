import 'package:flutter/material.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_images.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _select = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: (){
                  _select=0;
                  setState(() {

                  });
                },
                child: Image.asset(MyImages.homeIcon,height: MediaQuery.of(context).size.height*.04,color: _select==0? MyColors.lightGreenClr:MyColors.iconClr,)),
            InkWell(
                onTap: (){
                  _select=1;
                  setState(() {

                  });
                },
                child: Image.asset(MyImages.clipboardIcon,height: MediaQuery.of(context).size.height*.04,color: _select==1? MyColors.lightGreenClr:MyColors.iconClr,)),
            InkWell(
                onTap: (){
                  _select=2;
                  setState(() {

                  });
                },
                child: Image.asset(MyImages.messageIcon,height: MediaQuery.of(context).size.height*.04,color: _select==2? MyColors.lightGreenClr:MyColors.iconClr,)),
            InkWell(
                onTap: (){
                  _select=3;
                  setState(() {

                  });
                },
                child: Image.asset(MyImages.searchIcon,height: MediaQuery.of(context).size.height*.04,color: _select==3? MyColors.lightGreenClr:MyColors.iconClr,)),
          ],
        ),
      ),
    );
  }
}
