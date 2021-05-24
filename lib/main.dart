import 'package:flutter/material.dart';
import 'package:korean_app/DEMO.dart';
import 'package:korean_app/buttons.dart';
import 'package:korean_app/ui/screens/home_logged/home_logged.dart';
import 'package:korean_app/ui/screens/job_page/job_page.dart';
import 'package:korean_app/ui/screens/job_payment_page/job_payment_page.dart';
import 'package:korean_app/ui/screens/loading_page/loading_page.dart';
import 'package:korean_app/ui/screens/login_page/login_page.dart';
import 'package:korean_app/ui/screens/post_new_job/post_new_job.dart';
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
      },
    );
  }
}