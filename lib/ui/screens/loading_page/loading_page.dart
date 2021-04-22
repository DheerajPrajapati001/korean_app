import 'package:flutter/material.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_images.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(MyImages.logo,height: MediaQuery.of(context).size.height*.1,),
            SizedBox(
              height: MediaQuery.of(context).size.height*.02,
            ),
            Text('(주)아프니까 사장이다\n대표 : 신재호 , 박지훈\n서울특별시 서초구 강남대로 51길 10 , B1층 108-114호\n(강남효성해링턴타워)\n사업자등록번호 : 384-88-01297\n통신판매업신고 : 2019-서울서초-0055호\n전화번호 : 02-6246-9000',
            style: TextStyle(color: MyColors.greyFontClr),
            )
          ],
        ),
      ),
    );
  }
}
