import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_appbar.dart';
import 'package:korean_app/ui/custom_widgets/custom_normal_textfield.dart';
import 'package:korean_app/ui/custom_widgets/custom_text_form_field.dart';
import 'package:korean_app/ui/custom_widgets/grey_border_cont.dart';
import 'package:korean_app/ui/custom_widgets/light_green_button.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_images.dart';
import 'package:korean_app/utils/my_strings.dart';

class PostARequest extends StatefulWidget {
  @override
  _PostARequestState createState() => _PostARequestState();
}

class _PostARequestState extends State<PostARequest> {

  bool state = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteClr,
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          MyImages.editIcon,
                          height: MediaQuery.of(context).size.height * .05,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * .01,
                        ),
                        Text(
                          MyStrings.postARequest,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: MyColors.greyFontClr,
                              fontSize:
                              MediaQuery.of(context).size.height * .04),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GreyBorderCont(
                      widget: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: MyStrings.title,
                            ),
                            CustomNormalTextField(),
                            SizedBox(
                              height: 20,
                            ),
                            CustomText(
                              text: 'Contents(Pleas as specific as\npossible about the service you need',
                            ),
                            CustomNormalTextField(),
                            SizedBox(
                              height: 20,
                            ),
                            CustomText(
                              text: MyStrings.tag,
                            ),
                            SingleTextField(),
                            SizedBox(
                              height: 20,
                            ),
                            CustomText(
                              text: MyStrings.category,
                            ),
                            SingleTextField(),
                            SizedBox(
                              height: 20,
                            ),
                            CustomText(
                              text: MyStrings.deadline,
                            ),
                            SingleTextField(),
                            SizedBox(
                              height: 20,
                            ),
                            CustomText(
                              text: MyStrings.budgetRangeLow,
                            ),
                            Container(
                              height: MediaQuery.of(context)
                                  .size
                                  .height *
                                  .05,
                              width: MediaQuery.of(context)
                                  .size
                                  .width,
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
                                        child: Text('원')
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context)
                                        .size
                                        .width *
                                        .02,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomText(
                              text: MyStrings.budgetRangeHigh,
                            ),
                            Container(
                              height: MediaQuery.of(context)
                                  .size
                                  .height *
                                  .05,
                              width: MediaQuery.of(context)
                                  .size
                                  .width,
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
                                        child: Text('원')
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context)
                                        .size
                                        .width *
                                        .02,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
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
                        Text(
                          MyStrings.autoClose,
                          style: TextStyle(
                              color: MyColors.greyFontClr,
                              fontSize:
                              MediaQuery.of(context).size.width * .04),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Switch(
                            activeColor: MyColors.lightGreenClr,
                            value:
                        state, onChanged: (bool s){
                          setState(() {
                            state = s;
                          });
                        }),
                        Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*.3,
                          height: 45,
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            onPressed: (){},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(
                              child: Text(MyStrings.request,style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width*.05,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.whiteClr
                              ),),
                            ),
                            color: MyColors.lightGreenClr,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SingleTextField extends StatelessWidget {
  const SingleTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    Key key, this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 5,
        ),
        Column(
          children: [
            Text(
              text,
              style: TextStyle(
                  color: MyColors.greyFontClr,
                  fontSize:
                  MediaQuery.of(context).size.width * .04),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ],
    );
  }
}

