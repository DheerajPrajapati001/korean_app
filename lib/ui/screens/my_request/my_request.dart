import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_appbar.dart';
import 'package:korean_app/ui/custom_widgets/custom_divider.dart';
import 'package:korean_app/ui/custom_widgets/grey_border_cont.dart';
import 'package:korean_app/ui/screens/chat/chat.dart';
import 'package:korean_app/ui/screens/message/message.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_images.dart';
import 'package:korean_app/utils/my_strings.dart';

class MyRequest extends StatefulWidget {
  @override
  _MyRequestState createState() => _MyRequestState();
}

class _MyRequestState extends State<MyRequest> {
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
                GreyBorderCont(
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Image.asset(MyImages.horn,height: MediaQuery.of(context).size.height*.04,),
                            SizedBox(
                              width: 10,
                            ),
                            Text(MyStrings.viewMyRequest,style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height*.04),)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(MyStrings.recipesRequest,
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width*.045
                            ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                RequestButtonCont(
                                  color: MyColors.lightGreenClr,
                                  text: MyStrings.edit,
                                ),
                                RequestButtonCont(
                                  color: Color(0xff2478C1),
                                  text: MyStrings.deactive,
                                ),
                                RequestButtonCont(
                                  color: Color(0xffFF0D15),
                                  text: MyStrings.delete,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(MyStrings.february4th,
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width*.045
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: MyColors.lightContClr,
                                border: Border.all(
                                  color: MyColors.greyBorderClr
                                )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width*.15,
                                    height: MediaQuery.of(context).size.height*.05,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: MyColors.lightGreenClr,
                                    ),
                                  ),
                                  Text(MyStrings.publishing,style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height*.025
                                  ),),
                                  Container(
                                    width: MediaQuery.of(context).size.width*.15,
                                    height: MediaQuery.of(context).size.height*.05,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: MyColors.transparent,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(MyStrings.statusMessage,style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height*.025
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
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

class RequestButtonCont extends StatelessWidget {
  const RequestButtonCont({
    Key key, this.text, this.color,
  }) : super(key: key);

  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: Text(text,style: TextStyle(
              color: MyColors.whiteClr
            ),),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width*.03,
        )
      ],
    );
  }
}
