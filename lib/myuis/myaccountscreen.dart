import 'package:flutter/material.dart';
import 'package:orderadd/myuis/myhomescreen.dart';

import 'package:velocity_x/velocity_x.dart';

class MyAccountScreen extends StatefulWidget {
  final double mysizeWidthbox;
  const MyAccountScreen({Key? key, required this.mysizeWidthbox})
      : super(key: key);

  @override
  _MyAccountScreenState createState() =>
      _MyAccountScreenState(mysizeWidthbox: mysizeWidthbox);
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  final double mysizeWidthbox;

  _MyAccountScreenState({required this.mysizeWidthbox});
  @override
  Widget build(BuildContext context) {
    double mysizeWidthbox = context.mq.size.width * 0.09;
    return Material(
      child: SafeArea(
        child: ZStack(
          [
            VStack([
              KrCustAppBar(title: 'Account', mysizeWidthbox: mysizeWidthbox),
              5.heightBox,
              KrCustBody(mysizeWidthbox: mysizeWidthbox),
              5.heightBox,
              KrCustBodyExtra(mysizeWidthbox: mysizeWidthbox),
            ])
                .scrollVertical()
                .box
                .alignTopCenter
                .size(context.mq.size.width, context.percentHeight * 90)
                .make(),
            Container(
                alignment: Alignment.bottomCenter,
                child: KrCustNavBar(mysizeWidthbox: mysizeWidthbox)
                    .scrollHorizontal()),
          ],
        ),
      ),
    );
  }
}
