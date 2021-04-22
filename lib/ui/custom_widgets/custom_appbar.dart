import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_divider.dart';
import 'package:korean_app/utils/my_images.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(MyImages.menuIcon,height: MediaQuery.of(context).size.height*.02,),
                Image.asset(MyImages.logo,height: MediaQuery.of(context).size.height*.07,),
                Container(
                  height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(MyImages.chef,)
                      )
                    ),
                ),
              ],
            ),
          ),
          CustomDivider()
        ],
      ),
    );
  }
}
