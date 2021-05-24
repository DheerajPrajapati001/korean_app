import 'package:flutter/material.dart';
import 'package:korean_app/utils/my_colors.dart';

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteClr,
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 20,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page1');},
                  child: Text('Page 1'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page2');},
                  child: Text('Page 2'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page3');},
                  child: Text('Page 3'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page4');},
                  child: Text('Page 4'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page5');},
                  child: Text('Page 5'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page6');},
                  child: Text('Page 6'),
                ),
                SizedBox(height: 10,),
                RaisedButton(onPressed: () {Navigator.pushNamed(context, 'Page7');},
                  child: Text('Page 7'),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
