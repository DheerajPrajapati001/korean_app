import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_appbar.dart';
import 'package:korean_app/ui/custom_widgets/custom_bottom_navi_bar.dart';
import 'package:korean_app/ui/custom_widgets/custom_text_form_field.dart';
import 'package:korean_app/ui/custom_widgets/grey_button.dart';
import 'package:korean_app/ui/custom_widgets/recommended_sample.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_images.dart';
import 'package:korean_app/utils/my_strings.dart';

class HomeLogged extends StatefulWidget {
  @override
  _HomeLoggedState createState() => _HomeLoggedState();
}

class _HomeLoggedState extends State<HomeLogged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: MyColors.greyBorderClr,
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(MyStrings.hello,style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height*.022
                          ),),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*.02,
                          ),
                          GreyButton(
                            text: MyStrings.requestACustom,
                            onTap: (){},
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.03,
                  ),
                  Row(
                    children: [
                      CustomTextField(),
                      Spacer(),
                      Image.asset(MyImages.searchIcon,height: MediaQuery.of(context).size.height*.045,)
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.03,
                  ),
                  Text(MyStrings.recommendedFor,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height*.025
                  ),),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RecommendedSample(),
                      RecommendedSample(),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RecommendedSample(),
                      RecommendedSample(),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.02,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Container(
                        height: MediaQuery.of(context).size.height*.07,
                        width: MediaQuery.of(context).size.height*.07,
                        decoration: BoxDecoration(
                          color: MyColors.lightGreenClr,
                          shape: BoxShape.circle
                        ),
                        child: Material(
                          color: MyColors.transparent,
                          child: InkWell(
                            onTap: (){},
                            splashColor: MyColors.darkGreenClr,
                            borderRadius: BorderRadius.circular(100),
                            child: Center(
                              child: Icon(Icons.add,color: Colors.white,size: MediaQuery.of(context).size.height*.045,),
                            ),
                          ),
                        ),
                      )
                    ],
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
