import 'package:flutter/material.dart';
import 'package:korean_app/buttons.dart';
import 'package:korean_app/ui/screens/chat/chat.dart';
import 'package:korean_app/ui/screens/home_logged/home_logged.dart';
import 'package:korean_app/ui/screens/job_page/job_page.dart';
import 'package:korean_app/ui/screens/job_payment_page/job_payment_page.dart';
import 'package:korean_app/ui/screens/loading_page/loading_page.dart';
import 'package:korean_app/ui/screens/login_page/login_page.dart';
import 'package:korean_app/ui/screens/message/message.dart';
import 'package:korean_app/ui/screens/my_job_page/my_job_page.dart';
import 'package:korean_app/ui/screens/my_order/my_order.dart';
import 'package:korean_app/ui/screens/my_request/my_request.dart';
import 'package:korean_app/ui/screens/my_sale/my_sale.dart';
import 'package:korean_app/ui/screens/post_a_request/post_a_request.dart';
import 'package:korean_app/ui/screens/post_new_job/post_new_job.dart';
import 'package:korean_app/ui/screens/recipes_request/recipes_request.dart';
import 'package:korean_app/ui/screens/request/request.dart';
import 'package:korean_app/ui/screens/search/search.dart';
import 'package:korean_app/ui/screens/sign_up_page/sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Segu',
      ),
      debugShowCheckedModeBanner: false,
      home: Buttons(),
      routes: {
        'Page1': (context) => LoadingPage(),
        'Page2': (context) => LoginPage(),
        'Page3': (context) => SignUpPage(),
        'Page4': (context) => HomeLogged(),
        'Page5': (context) => JobPage(),
        'Page6': (context) => JobPaymentPage(),
        'Page7': (context) => PostNewJob(),
        'Page8': (context) => Request(),
        'Page9': (context) => PostARequest(),
        'Page10': (context) => Message(),
        'Page11': (context) => Chat(),
        'Page12': (context) => Search(),
        'Page13': (context) => MyRequest(),
        'Page14': (context) => RecipesRequest(),
        'Page15': (context) => MySale(),
        'Page16': (context) => MyOrder(),
        'Page17': (context) => MyJobPage(),
      },
    );
  }
}