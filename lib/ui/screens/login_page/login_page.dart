import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_text_form_field.dart';
import 'package:korean_app/ui/custom_widgets/dark_green_button.dart';
import 'package:korean_app/ui/custom_widgets/light_green_button.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_images.dart';
import 'package:korean_app/utils/my_strings.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final double _height = 25;
  var _formKey = GlobalKey<FormState>();
  void _submit() {
    final isValid = _formKey.currentState.validate();
    if (!isValid) {
      return;
    }
  }
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.1,
                  ),
                  Image.asset(MyImages.logo,height: MediaQuery.of(context).size.height*.1,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.05,
                  ),
                  Text(MyStrings.login,style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height*.04),),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.08,
                  ),
                  CustomTextField(
                    validator: (value){
                      if (value.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Enter a valid email!';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: _height,
                  ),
                  CustomTextField(
                    password: true,
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return 'Enter password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: _height,
                  ),
                  LightGreenButton(
                    text: MyStrings.Login,
                    onTap: (){
                      _submit();
                    },
                  ),
                  SizedBox(
                    height: _height,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width*.1,
                      ),
                      Checkbox(
                          activeColor: MyColors.lightGreenClr,
                          value: check, onChanged: (a){
                        setState(() {
                          check=a;
                        });
                      }),
                    ],
                  ),
                  SizedBox(
                    height: _height,
                  ),
                  DarkGreenButton(
                    onTap: (){},
                    text: MyStrings.logInWith,
                  ),
                  SizedBox(
                    height: _height,
                  ),
                  Text(MyStrings.signUp,style: TextStyle(fontWeight: FontWeight.bold,color: MyColors.greyFontClr),)
                ],
              ),
            ),
          ),
        );
  }
}
