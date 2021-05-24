import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_appbar.dart';
import 'package:korean_app/ui/custom_widgets/custom_clr_button.dart';
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
      body: SingleChildScrollView(
        child: Column(
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
                        Image.asset(
                          MyImages.editIcon,
                          height: MediaQuery.of(context).size.height * .04,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * .01,
                        ),
                        Text(
                          MyStrings.postNewJob,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * .04),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: MyColors.greyBorderClr)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                              onTap: () {
                                value = 0;
                                isJobs = true;
                                setState(() {});
                              },
                              child: Image.asset(
                                value == 0
                                    ? MyImages.clipboardListBlack
                                    : MyImages.clipboardList,
                                height:
                                    MediaQuery.of(context).size.height * .04,
                              )),
                          GestureDetector(
                              onTap: () {
                                value = 1;
                                isJobs = false;
                                setState(() {});
                              },
                              child: Image.asset(
                                value == 1
                                    ? MyImages.idCardBlack
                                    : MyImages.idCard,
                                height:
                                    MediaQuery.of(context).size.height * .04,
                              )),
                          GestureDetector(
                              onTap: () {
                                value = 2;
                                isJobs = false;
                                setState(() {});
                              },
                              child: Image.asset(
                                value == 2
                                    ? MyImages.flipBoardIconBlack
                                    : MyImages.flipBoardIcon,
                                height:
                                    MediaQuery.of(context).size.height * .04,
                              )),
                          GestureDetector(
                              onTap: () {
                                value = 3;
                                isJobs = false;
                                setState(() {});
                              },
                              child: Image.asset(
                                value == 3
                                    ? MyImages.addBoxBlack
                                    : MyImages.addBox,
                                height:
                                    MediaQuery.of(context).size.height * .04,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      value == 0
                          ? Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 0),
                              child: Column(
                                children: [
                                  GreyBorderCont(
                                    widget: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(MyStrings.title),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          CustomNormalTextField(),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(MyStrings.priceSetting),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .05,
                                            decoration: BoxDecoration(
                                                color: MyColors.lightContClr,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: MyColors
                                                        .greyBorderClr)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      .05,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          MyColors.lightContClr,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          color: MyColors
                                                              .greyBorderClr)),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 15),
                                                    child: Center(
                                                        child: Text('원')),
                                                  ),
                                                ),
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      .05,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          MyColors.lightContClr,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          color: MyColors
                                                              .greyBorderClr)),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 15),
                                                    child: Row(
                                                      children: [
                                                        Text(MyStrings.fixed),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Image.asset(
                                                          MyImages.downArrow,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              .03,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(MyStrings.category),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .05,
                                              decoration: BoxDecoration(
                                                  color: MyColors.lightContClr,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: MyColors
                                                          .greyBorderClr)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15),
                                                child: Row(
                                                  children: [
                                                    Spacer(),
                                                    Image.asset(
                                                      MyImages.downArrow,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              .03,
                                                    )
                                                  ],
                                                ),
                                              )),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                  MyStrings.serviceDescription),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          CustomNormalTextField(),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(MyStrings.tag),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          CustomNormalTextField(),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Spacer(),
                                      CustomClrButton(
                                        text: MyStrings.buyerInformation,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          : SizedBox()
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        value == 1
                            ? Column(
                                children: [
                                  GreyBorderCont(
                                    widget: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            MyStrings.buyersGuide,
                                            style: TextStyle(
                                                color: MyColors.greyFontClr),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          CustomNormalTextField(),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            MyStrings.deliveryTimeline,
                                            style: TextStyle(
                                                color: MyColors.greyFontClr),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .05,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        MyColors.greyBorderClr),
                                                color: MyColors.lightContClr,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    MyStrings.immediately,
                                                    style: TextStyle(
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .045),
                                                  ),
                                                  Image.asset(
                                                    MyImages.downArrow,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .03,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            MyStrings.immediateDelivery,
                                            style: TextStyle(
                                                color: MyColors.greyFontClr),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .05,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .35,
                                            decoration: BoxDecoration(
                                                color: MyColors.lightContClr,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: MyColors
                                                        .greyBorderClr)),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      .05,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .1,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          MyColors.lightContClr,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          color: MyColors
                                                              .greyBorderClr)),
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.attach_file,
                                                      color:
                                                          MyColors.greyFontClr,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .02,
                                                ),
                                                Text(
                                                  MyStrings.fileSelection,
                                                  style: TextStyle(
                                                      color:
                                                          MyColors.greyFontClr),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .2,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .05,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_back_ios,
                                        color: MyColors.greyFontClr,
                                      ),
                                      Text(
                                        MyStrings.jobInformation,
                                        style: TextStyle(
                                            color: MyColors.greyFontClr,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .04),
                                      ),
                                      Spacer(),
                                      CustomClrButton(text: MyStrings.jobImage,)
                                    ],
                                  )
                                ],
                              )
                            : SizedBox()
                      ],
                    ),
                  ),
                  Column(
                    children: [value == 2 ?
                    Column(
                      children: [
                        GreyBorderCont(
                          widget: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  MyStrings.image,
                                  style: TextStyle(
                                      color: MyColors.greyFontClr),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height*.15,
                                  decoration: BoxDecoration(
                                    color: MyColors.lightContClr,
                                    border: Border.all(
                                      color: MyColors.greyBorderClr
                                    ),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width*.05,
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width*.3,
                                        height: MediaQuery.of(context).size.height*.1,
                                        decoration: BoxDecoration(
                                          color: MyColors.whiteClr,
                                            border: Border.all(
                                                color: MyColors.greyBorderClr
                                            ),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Center(
                                          child: Image.asset(MyImages.image,height: MediaQuery.of(context).size.width*.1,),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  MyStrings.videoLink,
                                  style: TextStyle(
                                      color: MyColors.greyFontClr),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height*.05,
                                  decoration: BoxDecoration(
                                      color: MyColors.lightContClr,
                                      border: Border.all(
                                          color: MyColors.greyBorderClr
                                      ),
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text(MyStrings.deleteVideo,style: TextStyle(fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*.25,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: MyColors.greyFontClr,
                            ),
                            Text(
                              MyStrings.buyerGuide,
                              style: TextStyle(
                                  color: MyColors.greyFontClr,
                                  fontSize: MediaQuery.of(context)
                                      .size
                                      .width *
                                      .04),
                            ),
                            Spacer(),
                            CustomClrButton(text: MyStrings.additionalOptions,)
                          ],
                        )
                      ],
                    ) : SizedBox()],
                  ),
                  Column(
                    children: [value == 3 ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          GreyBorderCont(
                            widget: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [

                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: MyColors.greyFontClr,
                              ),
                              Text(
                                MyStrings.jobImage,
                                style: TextStyle(
                                    color: MyColors.greyFontClr,
                                    fontSize: MediaQuery.of(context)
                                        .size
                                        .width *
                                        .04),
                              ),
                            ],
                          )
                        ],
                      ),
                    ) : SizedBox()],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
