import 'package:flutter/material.dart';

import 'package:orderadd/extras/mycustcolors.dart';
import 'package:orderadd/mypath/mypaths.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vrouter/vrouter.dart';

class MySearchScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: MyCustomColors.blueCustomColor,
        child: Center(
          child: Stack(
            fit: StackFit.expand,
            alignment: AlignmentDirectional.center,
            clipBehavior: Clip.antiAlias,
            children: [
              InkWell(
                onTap: () => {
                  context.vRouter.to(MyPath.homeKrPath),
                },
                child: 'MySearchScreen'
                    .text
                    .headline5(context)
                    .color(MyCustomColors.orangeCustomColor)
                    .makeCentered()
                    .box
                    .width(context.screenWidth * 0.7)
                    .rounded
                    .height(context.screenWidth * 0.5)
                    .neumorphic(
                      color: MyCustomColors.blueCustomColor,
                      curve: VxCurve.flat,
                    )
                    .makeCentered(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
