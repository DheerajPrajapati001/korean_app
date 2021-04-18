import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_text_form_field.dart';
import 'package:korean_app/ui/custom_widgets/dark_green_button.dart';
import 'package:korean_app/ui/custom_widgets/light_green_button.dart';
import 'package:korean_app/utils/my_strings.dart';

class Demo extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();
  void _submit() {
    final isValid = _formKey.currentState.validate();
    if (!isValid) {
      return;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DarkGreenButton(
                  text: MyStrings.Login,
                  onTap: (){},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
