import 'package:flutter/material.dart';
import 'package:korean_app/DEMO.dart';
import 'package:korean_app/buttons.dart';
import 'package:korean_app/ui/screens/chat/chat.dart';
import 'package:korean_app/ui/screens/home_logged/home_logged.dart';
import 'package:korean_app/ui/screens/job_page/job_page.dart';
import 'package:korean_app/ui/screens/job_payment_page/job_payment_page.dart';
import 'package:korean_app/ui/screens/loading_page/loading_page.dart';
import 'package:korean_app/ui/screens/login_page/login_page.dart';
import 'package:korean_app/ui/screens/message/message.dart';
import 'package:korean_app/ui/screens/post_a_request/post_a_request.dart';
import 'package:korean_app/ui/screens/post_new_job/post_new_job.dart';
import 'package:korean_app/ui/screens/request/request.dart';
import 'package:korean_app/ui/screens/sign_up_page/sign_up_page.dart';
import 'package:korean_app/ui/search/search.dart';

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
      },
    );
  }
}