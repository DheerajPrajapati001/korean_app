import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_appbar.dart';
import 'package:korean_app/ui/custom_widgets/custom_bottom_navi_bar.dart';
import 'package:korean_app/ui/custom_widgets/grey_border_cont.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_images.dart';
import 'package:korean_app/utils/my_strings.dart';


class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Column(
        children: [
          CustomAppBar(),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(MyImages.messageIcon,height: MediaQuery.of(context).size.width*.06,color: MyColors.lightGreenClr,),
                    SizedBox(
                      width: 20,
                    ),
                    Text(MyStrings.message,style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height*.04),)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomCont(
                  widget: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                    child: Row(
                      children: [
                        Image.asset(MyImages.messageIcon,color: MyColors.iconClr,height: MediaQuery.of(context).size.height*.03,),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(MyImages.downloadIcon,color: MyColors.iconClr,height: MediaQuery.of(context).size.height*.03,),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(MyImages.deleteIcon,color: MyColors.iconClr,height: MediaQuery.of(context).size.height*.03,),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomCont(
                  widget: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(MyImages.chef,)
                              )
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('pigpigB',style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 2,
                            ),
                            Text('안녕하세요!',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.edit,color: MyColors.iconClr,),
                        Icon(Icons.delete,color: MyColors.iconClr,)
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



class CustomCont extends StatelessWidget {

  final Widget widget;

  const CustomCont({Key key, this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: MyColors.whiteClr,
          border: Border.all(
            color: MyColors.greyBorderClr,
          )
      ),
      child: widget,
    );
  }
}

