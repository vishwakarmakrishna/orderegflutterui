import 'dart:async';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:orderadd/extras/mycustcolors.dart';
import 'package:orderadd/mypath/mypaths.dart';
import 'package:orderadd/routes/router.dart';
import 'package:velocity_x/velocity_x.dart';

class SplScreen extends StatefulWidget {
  const SplScreen({Key? key}) : super(key: key);

  @override
  _SplScreenState createState() => _SplScreenState();
}

class _SplScreenState extends State<SplScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      () {
        context.pushNamed(MyPath.homePath);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.gray100,
      body: ZStack(
        [
          Icon(
            LineIcons.shippingFast,
            size: 200,
            color: MyCustomColors.blueCustomColor,
          )
              .box
              .size(context.screenWidth * 0.9, context.screenHeight * 0.9)
              .makeCentered(),
        ],
      ).centered(),
    );
  }
}
