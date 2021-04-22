import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_appbar.dart';
import 'package:korean_app/ui/custom_widgets/custom_bottom_navi_bar.dart';
import 'package:korean_app/ui/custom_widgets/custom_divider.dart';
import 'package:korean_app/ui/custom_widgets/grey_button.dart';
import 'package:korean_app/ui/custom_widgets/light_green_button.dart';
import 'package:korean_app/ui/custom_widgets/main_grey_border_cont.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_images.dart';
import 'package:korean_app/utils/my_strings.dart';

class JobPage extends StatefulWidget {
  @override
  _JobPageState createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      backgroundColor: MyColors.whiteClr,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(MyStrings.weTechYou,style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height*.03),),
            ),
            CustomDivider(),
            SizedBox(
              height: MediaQuery.of(context).size.height*.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(MyStrings.notYet,style: TextStyle(fontSize: MediaQuery.of(context).size.height*.02),),
                SizedBox(
                  width: MediaQuery.of(context).size.width*.2,
                ),
                Image.asset(MyImages.clockIcon,height: MediaQuery.of(context).size.height*.02,),
                Text('1 일',style: TextStyle(fontSize: MediaQuery.of(context).size.height*.02),),

              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: MyColors.greyBorderClr
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0,0),
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5,
                              spreadRadius: 5
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(MyImages.sample1)
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(MyImages.sample1,height: MediaQuery.of(context).size.height*.04,),
                              SizedBox(
                                width: MediaQuery.of(context).size.width*.05,
                              ),
                              Image.asset(MyImages.sample4,height: MediaQuery.of(context).size.height*.04,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.05,
                  ),
                  LightGreenButton(
                    onTap: (){},
                    text: MyStrings.buyNow+'         1,000,000 원',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.02,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.75,
                    height: 45,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: MyColors.greyBorderClr,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text(MyStrings.requestCustom,style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width*.04,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff757575)
                        ),),
                      ),
                      color: MyColors.greyClr,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.05,
                  ),
                  MainGreyBorderCont(
                    widget: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(MyImages.chef)
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text('꼬미',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColors.lightGreenClr
                                ),
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(MyImages.messageSquare,height: MediaQuery.of(context).size.height*.02,)
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*.03,
                          ),
                          GreyButton(
                            onTap: (){},
                            text: MyStrings.message,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*.02,
                          ),
                          GreyButton(
                            onTap: (){},
                            text: MyStrings.call,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*.02,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.03,
                  ),
                  MainGreyBorderCont(
                    widget: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width*.05,
                          ),
                          Image.asset(MyImages.shieldIcon,height: MediaQuery.of(context).size.height*.06,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*.1,
                          ),
                          Text(MyStrings.secureTransaction)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.03,
                  ),
                  MainGreyBorderCont(
                    widget: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width*.05,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*.1,
                          ),
                          Text(MyStrings.ifYouPay)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.03,
                  ),
                  MainGreyBorderCont(
                    widget: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(MyStrings.relatedTopics),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: MyColors.greyClr,
                              border: Border.all(
                                color: MyColors.greyBorderClr
                              )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: Center(
                                child: Text('Jjambbong'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('View: 244')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.03,
                  ),
                  MainGreyBorderCont(
                    widget: ExpansionTile(
                      leading: Image.asset(MyImages.infoIcon,height: MediaQuery.of(context).size.height*.03,),
                      title: Text(MyStrings.serviceDescription,style: TextStyle(fontWeight: FontWeight.bold,color: MyColors.blackClr),),
                      children: [
                        Column(
                          children: [
                            CustomDivider(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(MyStrings.in2004,style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery.of(context).size.width*.04
                                  ),),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(MyStrings.firstDecide,style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: MediaQuery.of(context).size.width*.04
                                  ),),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(MyStrings.link,style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: MediaQuery.of(context).size.width*.04
                                  ),),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.03,
                  ),
                  MainGreyBorderCont(
                    widget: ExpansionTile(
                      leading: Icon(Icons.add,color: MyColors.lightGreenClr,size: MediaQuery.of(context).size.height*.04,),
                      title: Text(MyStrings.additionalService,style: TextStyle(fontWeight: FontWeight.bold,color: MyColors.blackClr),),
                      children: [
                        Column(
                          children: [
                            CustomDivider(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(MyStrings.in2004,style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: MediaQuery.of(context).size.width*.04
                                  ),),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(MyStrings.firstDecide,style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: MediaQuery.of(context).size.width*.04
                                  ),),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(MyStrings.link,style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: MediaQuery.of(context).size.width*.04
                                  ),),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.03,
                  ),
                  Row(
                    children: [
                      Text(MyStrings.tax,style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.03,
                  ),
                  LightGreenButton(
                    text: MyStrings.buyNow+'  1,030,000 원',
                    onTap: (){},
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
