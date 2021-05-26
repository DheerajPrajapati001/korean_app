import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_appbar.dart';
import 'package:korean_app/ui/custom_widgets/down_arrow_button.dart';
import 'package:korean_app/ui/custom_widgets/grey_border_cont.dart';
import 'package:korean_app/ui/custom_widgets/light_green_button.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_images.dart';
import 'package:korean_app/utils/my_strings.dart';

class MySale extends StatefulWidget {
  @override
  _MySaleState createState() => _MySaleState();
}

class _MySaleState extends State<MySale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteClr,
      body: Column(
        children: [
          CustomAppBar(),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(MyImages.saleTag,height: MediaQuery.of(context).size.height*.04,),
                    SizedBox(
                      width: 10,
                    ),
                    Text(MyStrings.mySale,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height*.04
                    ),)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                DownArrowButton(),
                SizedBox(
                  height: 20,
                ),
                GreyBorderCont(
                  widget: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

