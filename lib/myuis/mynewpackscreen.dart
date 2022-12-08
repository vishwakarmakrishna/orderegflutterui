import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:orderadd/extras/mycustcolors.dart';
import 'package:orderadd/mypath/mypaths.dart';
import 'package:orderadd/routes/router.dart';

import 'package:velocity_x/velocity_x.dart';

class MyNewPackScreen extends StatefulWidget {
  @override
  _MyNewPackScreenState createState() => _MyNewPackScreenState();
}

class _MyNewPackScreenState extends State<MyNewPackScreen> {
  @override
  Widget build(BuildContext context) {
    double mysizeWidthbox = context.mq.size.width * 0.01;
    return SafeArea(
      child: Material(
        child: ZStack(
          [
            VStack(
              [
                KrNewOrderCustAppBar(mysizeWidthbox: mysizeWidthbox),
                MyNewOrderScreenHeader(
                    mysizeWidthbox: mysizeWidthbox,
                    packsize: 'Medium',
                    packquantityno: '12',
                    packordernum: '3',
                    packScreentype: 'Delivery',
                    afClick: () => {}),
                MyNewOrderScreenBody(
                  mysizeWidthbox: mysizeWidthbox,
                  myBodyList: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            LineIcons.locationArrow,
                            size: 25,
                            color: MyCustomColors.blueCustomColor,
                          ),
                          mysizeWidthbox.widthBox,
                          'Pickup Address 1'
                              .text
                              .bold
                              .size(4)
                              .align(TextAlign.start)
                              .make(),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            LineIcons.locationArrow,
                            size: 25,
                            color: MyCustomColors.blueCustomColor,
                          ),
                          mysizeWidthbox.widthBox,
                          'Pickup Address 2'
                              .text
                              .bold
                              .size(4)
                              .align(TextAlign.start)
                              .make(),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            LineIcons.locationArrow,
                            size: 25,
                            color: MyCustomColors.blueCustomColor,
                          ),
                          mysizeWidthbox.widthBox,
                          'Pickup Address 3'
                              .text
                              .bold
                              .size(4)
                              .align(TextAlign.start)
                              .make(),
                        ]),
                  ],
                  myTitleBody: 'Pickup',
                ),
                MyNewOrderScreenBody(
                  mysizeWidthbox: mysizeWidthbox,
                  myBodyList: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            LineIcons.locationArrow,
                            size: 25,
                            color: MyCustomColors.orangeCustomColor,
                          ),
                          mysizeWidthbox.widthBox,
                          'Drop Address'
                              .text
                              .bold
                              .size(4)
                              .align(TextAlign.start)
                              .make(),
                        ]),
                  ],
                  myTitleBody: 'Drop Address',
                ),
                HStack(
                  [
                    HStack(
                      [
                        TextButton(
                            onPressed: () => {},
                            child: 'DECLINE'
                                .text
                                .bold
                                .color(Vx.black)
                                .size(6)
                                .make()),
                      ],
                    )
                        .box
                        .rounded
                        .p4
                        .outerShadowMd
                        .color(Vx.gray300.withOpacity(0.9))
                        .make(),
                    HStack(
                      [
                        TextButton(
                            onPressed: () => {},
                            child: 'ACCEPT'
                                .text
                                .bold
                                .color(Vx.white)
                                .size(6)
                                .make()),
                        ZStack(
                          [
                            CircularProgressIndicator(
                              strokeWidth: 4.0,
                              value: 90,
                              color: MyCustomColors.orangeCustomColor,
                            ),
                            '90'.text.bold.color(Vx.black).size(6).make(),
                          ],
                          alignment: AlignmentDirectional.center,
                        )
                            .box
                            .roundedFull
                            .p4
                            .color(Vx.green500.withOpacity(0.9))
                            .make(),
                        // Icon(
                        //   LineIcons.icons,
                        //   size: 30,
                        //   color: Vx.white,
                        // ),
                      ],
                    )
                        .box
                        .rounded
                        .p4
                        .outerShadowMd
                        .color(Vx.green500.withOpacity(0.9))
                        .make(),
                  ],
                  alignment: MainAxisAlignment.spaceAround,
                  crossAlignment: CrossAxisAlignment.center,
                  axisSize: MainAxisSize.max,
                ).pOnly(top: 50),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyNewOrderScreenBody extends StatelessWidget {
  final double mysizeWidthbox;
  final String myTitleBody;
  final List<Widget> myBodyList;
  MyNewOrderScreenBody({
    required this.mysizeWidthbox,
    required this.myBodyList,
    required this.myTitleBody,
  });

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            myTitleBody.text.bold
                                .color(MyCustomColors.orangeCustomColor)
                                .size(3.5)
                                .make(),
                          ],
                        ),
                        10.heightBox,
                      ]),
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: myBodyList)
                    .p4(),
              ],
            ),
          ],
        ).box.roundedLg.p16.color(Vx.white).withShadow(
          [
            BoxShadow(
              color: MyCustomColors.blueCustomColor.withOpacity(0.5),
              offset: const Offset(
                1.0,
                1.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 0.5,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ).make(),
      ],
    ).p16();
  }
}

class KrNewOrderCustAppBar extends StatelessWidget {
  final double mysizeWidthbox;
  KrNewOrderCustAppBar({required this.mysizeWidthbox});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () => {
                context.pushNamed(MyPath.homePath),
              },
              icon: Icon(
                LineIcons.alternateLongArrowLeft,
                size: 30,
                color: Vx.white,
              ),
            ).box.makeCentered(),
            'NEW PACKAGE'
                .text
                .extraBold
                .widest
                .color(Vx.white)
                .size(15.0)
                .make()
                .box
                .makeCentered(),
            mysizeWidthbox.widthBox,
            mysizeWidthbox.widthBox,
            mysizeWidthbox.widthBox,
          ],
        )
            .box
            .p3
            .color(MyCustomColors.blueCustomColor)
            .size(context.mq.size.width, context.percentHeight * 6)
            .bottomRounded(value: 30.0)
            .makeCentered(),
      ),
    );
  }
}

class MyNewOrderScreenHeader extends StatefulWidget {
  final double mysizeWidthbox;

  final String packsize;

  final String packquantityno;
  final String packordernum;
  final String packScreentype;
  final Function afClick;

  MyNewOrderScreenHeader({
    required this.mysizeWidthbox,
    required this.packsize,
    required this.packquantityno,
    required this.packordernum,
    required this.packScreentype,
    required this.afClick,
  });

  @override
  _MyNewOrderScreenHeaderState createState() => _MyNewOrderScreenHeaderState(
        mysizeWidthbox: mysizeWidthbox,
        packsize: packsize,
        packquantityno: packquantityno,
        packordernum: packordernum,
        packScreentype: packScreentype,
        afClick: afClick,
      );
}

class _MyNewOrderScreenHeaderState extends State<MyNewOrderScreenHeader> {
  final double mysizeWidthbox;

  final String packsize;

  final String packquantityno;
  final String packordernum;
  final String packScreentype;
  final Function afClick;

  _MyNewOrderScreenHeaderState(
      {required this.mysizeWidthbox,
      required this.packordernum,
      required this.packsize,
      required this.packquantityno,
      required this.packScreentype,
      required this.afClick});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => afClick(),
        child: Container(
          height: context.mq.size.height * 0.1,
          width: context.mq.size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              context.safePercentHeight.heightBox,
              VStack(
                [
                  HStack(
                    [
                      HStack(
                        [
                          'Orders: '
                              .text
                              .size(10)
                              .extraBold
                              .color(Vx.black)
                              .make(),
                          packordernum.text
                              .size(10)
                              .extraBold
                              .color(MyCustomColors.orangeCustomColor)
                              .make(),
                        ],
                      ),
                      100.widthBox,
                      HStack(
                        [
                          'Size: '
                              .text
                              .size(10)
                              .extraBold
                              .color(Vx.black)
                              .make(),
                          packsize.text
                              .size(10)
                              .extraBold
                              .color(MyCustomColors.yellowCustomColor)
                              .make(),
                        ],
                      ),
                    ],
                    alignment: MainAxisAlignment.spaceBetween,
                    crossAlignment: CrossAxisAlignment.start,
                    axisSize: MainAxisSize.max,
                  ).p(5).centered(),
                ],
              ),
              context.safePercentHeight.heightBox,
              VStack(
                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      HStack(
                        [
                          'Type: '
                              .text
                              .size(10)
                              .extraBold
                              .color(Vx.black)
                              .make(),
                          packScreentype.text
                              .size(10)
                              .extraBold
                              .color(MyCustomColors.orangeCustomColor)
                              .make(),
                        ],
                      ),
                      100.widthBox,
                      HStack(
                        [
                          'Quantity: '
                              .text
                              .size(10)
                              .extraBold
                              .color(Vx.black)
                              .make(),
                          packquantityno.text
                              .size(10)
                              .extraBold
                              .color(MyCustomColors.blueCustomColor)
                              .make(),
                        ],
                      ),
                    ],
                  ),
                ],
              ).centered(),
              context.safePercentHeight.heightBox,
            ],
          ),
        )
            .box

            // .rounded.border(width: 0.5, style: BorderStyle.solid)

            .make()
            .p12(),
      ),
    );
  }
}
