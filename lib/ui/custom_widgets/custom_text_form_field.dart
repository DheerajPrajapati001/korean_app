import 'package:flutter/material.dart';
import 'package:korean_app/utils/my_colors.dart';

class CustomTextField extends StatelessWidget {
  final keyboardType;
  final FormFieldValidator validator;
  final bool password;

  const CustomTextField({Key key, this.keyboardType, this.validator, this.password}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*.75,
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: password == null ? false : true,
        validator: validator,
        cursorColor: MyColors.blackClr,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: MyColors.greyBorderClr,
            )
          ),
          contentPadding: EdgeInsets.all(10),
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
