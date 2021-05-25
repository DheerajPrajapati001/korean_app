import 'package:flutter/material.dart';
import 'package:korean_app/ui/custom_widgets/custom_appbar.dart';
import 'package:korean_app/ui/custom_widgets/custom_bottom_navi_bar.dart';
import 'package:korean_app/ui/screens/message/message.dart';
import 'package:korean_app/utils/my_colors.dart';
import 'package:korean_app/utils/my_images.dart';
import 'package:korean_app/utils/my_strings.dart';


class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Column(
        children: [
          CustomAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
            child: Column(
              children: [
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
                        Icon(Icons.delete,color: MyColors.iconClr,)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomCont(
                  widget: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Cont(
                              text: MyStrings.sendACustom,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomCont(
                        widget: SizedBox(height: 100,),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              color: MyColors.greyClr.withOpacity(0.5),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Icon(Icons.attach_file,size: MediaQuery.of(context).size.height*.02,),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(MyStrings.fileSelection,style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Cont(
                              text: MyStrings.send,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Cont extends StatelessWidget {
  const Cont({
    Key key, this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      color: MyColors.greyClr.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Text(text,style: TextStyle(fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
