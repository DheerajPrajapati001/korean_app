import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_appbar.dart';
import 'package:korean_app/ui/custom_widgets/custom_bottom_navi_bar.dart';
import 'package:korean_app/ui/custom_widgets/custom_divider.dart';
import 'package:korean_app/ui/custom_widgets/main_grey_border_cont.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_images.dart';
import 'package:korean_app/utils/my_strings.dart';

class JobPaymentPage extends StatefulWidget {
  @override
  _JobPaymentPageState createState() => _JobPaymentPageState();
}

class _JobPaymentPageState extends State<JobPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Column(
        children: [
          CustomAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(MyImages.creditCard,height: MediaQuery.of(context).size.height*.04,),
                SizedBox(
                  width: MediaQuery.of(context).size.height*.02,
                ),
                Text(MyStrings.selectPayment,style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*.05),)
              ],
            ),
          ),
          CustomDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(
              children: [
                MainGreyBorderCont(
                  widget: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(child: Image.asset(MyImages.sample2,fit: BoxFit.cover,),
                                height: MediaQuery.of(context).size.height*.08,
                                  width: MediaQuery.of(context).size.height*.13,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*.04,
                                ),
                                Text(MyStrings.weTechYou,style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*.045),)
                              ],
                            ),
                            Row(
                              children: [
                                Spacer(),
                                Text('1,000,000 원',style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width*.05),)
                              ],
                            )
                          ],
                        ),
                      ),
                      CustomDivider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Row(
                          children: [
                            Text(MyStrings.tax,style: TextStyle(fontWeight: FontWeight.bold),),
                            Spacer(),
                            Text('30,000 원',style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      CustomDivider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Row(
                          children: [
                            Text(MyStrings.total,style: TextStyle(fontWeight: FontWeight.bold),),
                            Spacer(),
                            Text('1,030,000 원',style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.03,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColors.greyClr,
                      border: Border.all(
                        color: MyColors.greyBorderClr,
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MiniContText(
                        text: MyStrings.balance,
                      ),
                      MiniContText(
                        text: MyStrings.bankTransfer,
                      ),
                      MiniContText(
                        text: MyStrings.creditCard,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.03,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(MyImages.lockIcon,height: MediaQuery.of(context).size.height*.03,),
                          Text(MyStrings.safeShopping,style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width*.05,
                              color: MyColors.whiteClr
                          ),),
                          Image.asset(MyImages.lockIcon,height: MediaQuery.of(context).size.height*.03,color: Colors.transparent,),
                        ],
                      ),
                    ),
                    color: MyColors.lightGreenClr,
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


class MiniContText extends StatelessWidget {

  final String text;

  const MiniContText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.25,
      height: MediaQuery.of(context).size.height*.042,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffF7F8F9)
      ),
      child: Center(
        child: Text(text,style: TextStyle(fontSize: MediaQuery.of(context).size.width*.035),),
      ),
    );
  }
}

