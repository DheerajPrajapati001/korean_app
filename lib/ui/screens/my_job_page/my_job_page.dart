import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_appbar.dart';
import 'package:korean_app/ui/custom_widgets/down_arrow_button.dart';
import 'package:korean_app/ui/custom_widgets/grey_border_cont.dart';
import 'package:korean_app/ui/screens/my_request/my_request.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_images.dart';
import 'package:korean_app/utils/my_strings.dart';

class MyJobPage extends StatefulWidget {
  @override
  _MyJobPageState createState() => _MyJobPageState();
}

class _MyJobPageState extends State<MyJobPage> {
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
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              MyStrings.myAccount,
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width * .05,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Stack(
                              children: [
                                DownArrowButton(),
                                Positioned(
                                    right: MediaQuery.of(context).size.width*.03,
                                    top: MediaQuery.of(context).size.width*.04,
                                    child: Text('0 Won',style: TextStyle(color: MyColors.whiteClr),))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Image.asset(MyImages.horn,height: MediaQuery.of(context).size.height*.04,),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(MyStrings.viewMyServices,style: TextStyle(fontSize: MediaQuery.of(context).size.height*.02),)
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(MyImages.sample1,height: MediaQuery.of(context).size.height*.06,),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(MyStrings.weDelivery),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        RequestButtonConts(
                                          color: MyColors.lightGreenClr,
                                          text: MyStrings.edit,
                                        ),
                                        RequestButtonConts(
                                          color: Color(0xff2478C1),
                                          text: MyStrings.deactive,
                                        ),
                                        RequestButtonConts(
                                          color: Color(0xffFF0D15),
                                          text: MyStrings.delete,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(MyStrings.february4th),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text('5,000,000 Won'),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height*.04,
                                  width: MediaQuery.of(context).size.width*.2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: MyColors.lightContClr,
                                    border: Border.all(
                                      color: MyColors.greyBorderClr
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(MyStrings.fixed),
                                  ),
                                )
                              ],
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
                        height: 20,
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
                        height: 30,
                      )
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

class RequestButtonConts extends StatelessWidget {
  const RequestButtonConts({
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
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
            child: Text(text,style: TextStyle(
                color: MyColors.whiteClr
            ),),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width*.02,
        )
      ],
    );
  }
}
