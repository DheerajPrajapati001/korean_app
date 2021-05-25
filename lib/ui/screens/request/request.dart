import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_appbar.dart';
import 'package:korean_app/ui/custom_widgets/custom_bottom_navi_bar.dart';
import 'package:korean_app/ui/custom_widgets/custom_text_form_field.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_images.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteClr,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: CustomTextField()),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.searchIcon,
                        height: MediaQuery.of(context).size.height * .045,
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RequestCard(),
                      RequestCard(),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .05,
                  ),
                  Row(
                    children: [
                      RequestCard(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.lightGreenClr,
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class RequestCard extends StatelessWidget {
  const RequestCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * .22,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColors.whiteClr,
          border: Border.all(color: MyColors.greyBorderClr),
          boxShadow: [
            BoxShadow(
                color: MyColors.greyFontClr.withOpacity(0.3),
                spreadRadius: 2,
                offset: Offset(0, 4),
                blurRadius: 5)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            MyImages.chef,
                          ))),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    'pigpigB',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '대전에서 막국수집 개업하려고 합니다\n전수해주실분 연락주세요.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:
                      MediaQuery.of(context).size.width * .025),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '예산: 1,000,000 원 - 5,000,000 원\n마감시한: 15 일\n태그: 막국수',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:
                          MediaQuery.of(context).size.width * .025),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
