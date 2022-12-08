import 'package:flutter/material.dart';

import 'package:orderadd/extras/mycustcolors.dart';
import 'package:orderadd/mypath/mypaths.dart';
import 'package:orderadd/routes/router.dart';
import 'package:velocity_x/velocity_x.dart';

class Myslidemenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: MyCustomColors.yellowCustomColor,
        child: Center(
          child: Stack(
            fit: StackFit.expand,
            alignment: AlignmentDirectional.center,
            clipBehavior: Clip.antiAlias,
            children: [
              InkWell(
                onTap: () => {
                  context.pushNamed(MyPath.homePath),
                },
                child: 'Myslidemenu'
                    .text
                    .headline5(context)
                    .color(MyCustomColors.orangeCustomColor)
                    .makeCentered()
                    .box
                    .width(context.screenWidth * 0.7)
                    .rounded
                    .height(context.screenWidth * 0.5)
                    .neumorphic(
                      color: MyCustomColors.yellowCustomColor,
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
