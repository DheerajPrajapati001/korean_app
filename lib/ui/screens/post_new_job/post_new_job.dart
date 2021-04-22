import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_appbar.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_images.dart';
import 'package:korean_app/utils/my_strings.dart';

class PostNewJob extends StatefulWidget {
  @override
  _PostNewJobState createState() => _PostNewJobState();
}

class _PostNewJobState extends State<PostNewJob> {

  int value = 0;
  bool isJobs = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteClr,
      body: Column(
        children: [
          CustomAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Image.asset(MyImages.editIcon,height: MediaQuery.of(context).size.height*.04,),
                      SizedBox(
                        width: MediaQuery.of(context).size.height*.01,
                      ),
                      Text(MyStrings.postNewJob,style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height*.04),)
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: MyColors.greyBorderClr
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                            value = 0;
                            isJobs = true;
                            setState(() {

                            });
                          },
                            child: Image.asset(MyImages.clipboardList,height: MediaQuery.of(context).size.height*.04,color: value==0?MyColors.greyBorderClr:MyColors.blackClr,)),
                        GestureDetector(
                            onTap: (){
                              value = 1;
                              isJobs = false;
                              setState(() {

                              });
                            },
                            child: Image.asset(MyImages.idCard,height: MediaQuery.of(context).size.height*.04,color: value==1?MyColors.greyBorderClr:MyColors.blackClr,)),
                        GestureDetector(
                            onTap: (){
                              value = 2;
                              isJobs = false;
                              setState(() {

                              });
                            },
                            child: Image.asset(MyImages.flipBoardIcon,height: MediaQuery.of(context).size.height*.04,color: value==2?MyColors.greyBorderClr:MyColors.blackClr,)),
                        GestureDetector(
                            onTap: (){
                              value = 3;
                              isJobs = false;
                              setState(() {

                              });
                            },
                            child: Image.asset(MyImages.addBox,height: MediaQuery.of(context).size.height*.04,color: value==3?MyColors.greyBorderClr:MyColors.blackClr,)),
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
