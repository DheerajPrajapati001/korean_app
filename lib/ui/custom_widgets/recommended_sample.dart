import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_divider.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_images.dart';
import 'package:korean_app/utils/my_strings.dart';

class RecommendedSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.4,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: MyColors.greyBorderClr
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,0),
            color: Colors.black.withOpacity(0.1),
            blurRadius: 3,
            spreadRadius: 3
          ),
        ],
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*.4,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(MyImages.sample1)
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.height*.04,
                  height: MediaQuery.of(context).size.height*.04,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(MyImages.chef)
                    )
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('꼬미'),
                    Text(MyStrings.weTechYouSample,style: TextStyle(height: 1.2),)
                  ],
                )
              ],
            ),
          ),
          CustomDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Spacer(),
                Text('1,000,000 원')
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
