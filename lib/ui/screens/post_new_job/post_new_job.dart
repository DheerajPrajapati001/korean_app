import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_appbar.dart';
import 'package:korean_app/ui/custom_widgets/custom_normal_textfield.dart';
import 'package:korean_app/ui/custom_widgets/grey_border_cont.dart';
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
                            child: Image.asset(value==0?MyImages.clipboardListBlack:MyImages.clipboardList,height: MediaQuery.of(context).size.height*.04,)),
                        GestureDetector(
                            onTap: (){
                              value = 1;
                              isJobs = false;
                              setState(() {

                              });
                            },
                            child: Image.asset(value==1?MyImages.idCardBlack:MyImages.idCard,height: MediaQuery.of(context).size.height*.04,)),
                        GestureDetector(
                            onTap: (){
                              value = 2;
                              isJobs = false;
                              setState(() {

                              });
                            },
                            child: Image.asset(value==2?MyImages.flipBoardIconBlack:MyImages.flipBoardIcon,height: MediaQuery.of(context).size.height*.04,)),
                        GestureDetector(
                            onTap: (){
                              value = 3;
                              isJobs = false;
                              setState(() {

                              });
                            },
                            child: Image.asset(value==3?MyImages.addBoxBlack:MyImages.addBox,height: MediaQuery.of(context).size.height*.04,)),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                   value==0?Padding(
                     padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 0),
                     child: Column(
                       children: [
                         GreyBorderCont(
                           widget: Padding(
                             padding: const EdgeInsets.all(10.0),
                             child: Column(
                               children: [
                                 Row(
                                   children: [
                                    SizedBox(
                                      width: 5,
                                    ), Text(MyStrings.title),
                                   ],
                                 ),
                                 SizedBox(
                                   height: 10,
                                 ),
                                 CustomNormalTextField()
                               ],
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                             ),
                           ),
                         )
                       ],
                     ),
                   ):SizedBox()
                  ],
                ),
                Column(
                  children: [
                    value==1?Text('value1'):SizedBox()
                  ],
                ),Column(
                  children: [
                    value==2?Text('value2'):SizedBox()
                  ],
                ),
                Column(
                  children: [
                    value==3?Text('value3'):SizedBox()
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
