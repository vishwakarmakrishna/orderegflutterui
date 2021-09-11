import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:orderadd/extras/mycustcolors.dart';
import 'package:orderadd/mypath/mypaths.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vrouter/vrouter.dart';

class MyPackageScreen extends StatefulWidget {
  @override
  _MyPackageScreenState createState() => _MyPackageScreenState();
}

class _MyPackageScreenState extends State<MyPackageScreen> {
  @override
  Widget build(BuildContext context) {
    double mysizeWidthbox = context.mq.size.width * 0.01;
    return Material(
      child: SafeArea(
        child: ZStack(
          [
            VStack(
              [
                KrPackCustAppBar(mysizeWidthbox: mysizeWidthbox),
                10.heightBox,
                'Pickup'
                    .text
                    .bold
                    .color(
                      MyCustomColors.blueCustomColor,
                    )
                    .size(15)
                    .align(TextAlign.start)
                    .make()
                    .box
                    .px24
                    .make(),
                Container(
                  child: MyPackageScreenHeader(
                    mysizeWidthbox: mysizeWidthbox,
                    packno: '102ASA',
                    packsize: 'Medium',
                    packlocation: 'Dhyanchand Marg',
                    packquantityno: '2',
                    packnum: '1234567890',
                    otpackge: 'GET OTP',
                    packScreentype: 'Pickup\nPending',
                    afClick: () => {},
                  ).box.rounded.withShadow(
                    [
                      BoxShadow(
                        color: MyCustomColors.blueCustomColor.withOpacity(0.5),
                        offset: const Offset(
                          1.0,
                          1.0,
                        ),
                        blurRadius: 5.0,
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
                ).p12().centered(),
                Container(
                  child: MyPackageScreenHeader(
                    mysizeWidthbox: mysizeWidthbox,
                    packno: '102ASA',
                    packsize: 'Medium',
                    packlocation: 'Dhyanchand Marg',
                    packquantityno: '2',
                    packnum: '1234567890',
                    otpackge: 'GET OTP',
                    packScreentype: 'Pickup\nPending',
                    afClick: () => {},
                  ).box.rounded.withShadow(
                    [
                      BoxShadow(
                        color: MyCustomColors.blueCustomColor.withOpacity(0.5),
                        offset: const Offset(
                          1.0,
                          1.0,
                        ),
                        blurRadius: 5.0,
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
                ).p12().centered(),
                Container(
                  child: MyPackageScreenHeader(
                    mysizeWidthbox: mysizeWidthbox,
                    packno: '102ASA',
                    packsize: 'Medium',
                    packlocation: 'Dhyanchand Marg',
                    packquantityno: '2',
                    packnum: '1234567890',
                    otpackge: 'GET OTP',
                    packScreentype: 'Pickup\nPending',
                    afClick: () => {},
                  ).box.rounded.withShadow(
                    [
                      BoxShadow(
                        color: MyCustomColors.blueCustomColor.withOpacity(0.5),
                        offset: const Offset(
                          1.0,
                          1.0,
                        ),
                        blurRadius: 5.0,
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
                ).p12().centered(),
                'Drop'
                    .text
                    .bold
                    .color(
                      MyCustomColors.orangeCustomColor,
                    )
                    .size(15)
                    .align(TextAlign.start)
                    .make()
                    .box
                    .px24
                    .make(),
                Container(
                  child: Center(
                    child: Row(
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        LineIcons.locationArrow,
                                        size: 30,
                                        color: MyCustomColors.orangeCustomColor,
                                      ),
                                      mysizeWidthbox.widthBox,
                                      'Ghataghar,Lane No. 2'
                                          .text
                                          .bold
                                          .size(4)
                                          .align(TextAlign.start)
                                          .make(),
                                    ]),
                                mysizeWidthbox.heightBox,
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        LineIcons.phone,
                                        size: 30,
                                        color: MyCustomColors.greenCustomColor,
                                      ),
                                      '1234567890'
                                          .text
                                          .bold
                                          .size(4)
                                          .align(TextAlign.start)
                                          .make(),
                                    ]),
                              ]),
                          mysizeWidthbox.heightBox,
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        LineIcons.exclamationCircle,
                                        size: 50,
                                        color: MyCustomColors.yellowCustomColor,
                                      ),
                                      'Drop\nPending'
                                          .text
                                          .bold
                                          .size(4)
                                          .align(TextAlign.start)
                                          .make(),
                                    ]),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        child: InkWell(
                                          onTap: () => {},
                                          child: 'ENTER OTP'
                                              .text
                                              .color(MyCustomColors
                                                  .orangeCustomColor)
                                              .size(4)
                                              .extraBold
                                              .make()
                                              .box
                                              .p12
                                              .make(),
                                        )
                                            .box
                                            .rounded
                                            .withShadow(
                                              [
                                                BoxShadow(
                                                  color: MyCustomColors
                                                      .orangeCustomColor
                                                      .withOpacity(0.5),
                                                  offset: const Offset(
                                                    1.0,
                                                    1.0,
                                                  ),
                                                  blurRadius: 10.0,
                                                  spreadRadius: 0.5,
                                                ), //BoxShadow
                                                BoxShadow(
                                                  color: Colors.white,
                                                  offset:
                                                      const Offset(0.0, 0.0),
                                                  blurRadius: 0.0,
                                                  spreadRadius: 0.0,
                                                ), //BoxShadow
                                              ],
                                            )
                                            .make()
                                            .p12()
                                            .centered(),
                                      ),
                                    ]),
                              ]),
                        ]),
                  ).p8(),
                )
                    .box
                    .rounded
                    .withShadow(
                      [
                        BoxShadow(
                          color:
                              MyCustomColors.blueCustomColor.withOpacity(0.5),
                          offset: const Offset(
                            1.0,
                            1.0,
                          ),
                          blurRadius: 5.0,
                          spreadRadius: 0.5,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    )
                    .make()
                    .p12()
                    .centered(),
              ],
            ).scrollVertical(),
          ],
        ),
      ),
    );
  }
}

class KrPackCustAppBar extends StatelessWidget {
  final double mysizeWidthbox;
  KrPackCustAppBar({required this.mysizeWidthbox});

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
                context.vRouter.to(MyPath.homeKrPath),
              },
              icon: Icon(
                LineIcons.alternateLongArrowLeft,
                size: 30,
                color: Vx.white,
              ),
            ).box.makeCentered(),
            'PACKAGE 102AS'
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

class MyPackageScreenHeader extends StatefulWidget {
  final double mysizeWidthbox;
  final String packno;
  final String packsize;
  final String packlocation;
  final String packquantityno;
  final String packnum;
  final String packScreentype;
  final Function afClick;
  final String otpackge;

  MyPackageScreenHeader({
    required this.mysizeWidthbox,
    required this.packno,
    required this.packsize,
    required this.packlocation,
    required this.packquantityno,
    required this.packnum,
    required this.otpackge,
    required this.packScreentype,
    required this.afClick,
  });

  @override
  _MyPackageScreenHeaderState createState() => _MyPackageScreenHeaderState(
        mysizeWidthbox: mysizeWidthbox,
        packno: packno,
        packsize: packsize,
        otpackge: otpackge,
        packlocation: packlocation,
        packquantityno: packquantityno,
        packnum: packnum,
        packScreentype: packScreentype,
        afClick: afClick,
      );
}

class _MyPackageScreenHeaderState extends State<MyPackageScreenHeader> {
  final double mysizeWidthbox;
  final String packno;
  final String packsize;
  final String packlocation;
  final String packquantityno;
  final String packnum;
  final String packScreentype;
  final Function afClick;
  final String otpackge;
  _MyPackageScreenHeaderState(
      {required this.mysizeWidthbox,
      required this.packno,
      required this.packsize,
      required this.packlocation,
      required this.packquantityno,
      required this.packnum,
      required this.otpackge,
      required this.packScreentype,
      required this.afClick});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    mysizeWidthbox.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          'ORDER'
                              .text
                              .bold
                              .color(MyCustomColors.blueCustomColor)
                              .size(4)
                              .make(),
                          mysizeWidthbox.widthBox,
                          packno.text.bold
                              .size(4)
                              .color(MyCustomColors.blueCustomColor)
                              .align(TextAlign.start)
                              .make(),
                        ]),
                    mysizeWidthbox.heightBox,
                    mysizeWidthbox.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                'Size:'.text.bold.size(4).make(),
                                mysizeWidthbox.widthBox,
                                packsize.text.bold
                                    .size(4)
                                    .color(MyCustomColors.yellowCustomColor)
                                    .align(TextAlign.start)
                                    .make(),
                              ]),
                          mysizeWidthbox.widthBox,
                          mysizeWidthbox.widthBox,
                          mysizeWidthbox.widthBox,
                          mysizeWidthbox.widthBox,
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                'Quantity:'.text.bold.size(4).make(),
                                mysizeWidthbox.widthBox,
                                packquantityno.text.bold
                                    .size(4)
                                    .color(MyCustomColors.blueCustomColor)
                                    .align(TextAlign.start)
                                    .make(),
                              ]),
                        ]),
                    mysizeWidthbox.widthBox,
                    mysizeWidthbox.widthBox,
                    mysizeWidthbox.widthBox,
                    mysizeWidthbox.widthBox,
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
                          packlocation.text.bold
                              .size(4)
                              .align(TextAlign.start)
                              .make(),
                        ]),
                    mysizeWidthbox.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            LineIcons.phone,
                            size: 25,
                            color: MyCustomColors.greenCustomColor,
                          ),
                          packnum.text.bold
                              .size(4)
                              .align(TextAlign.start)
                              .make(),
                        ]),
                  ]),
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
                          Icon(
                            LineIcons.exclamationCircle,
                            size: 50,
                            color: MyCustomColors.blueCustomColor,
                          ),
                          packScreentype.text.bold
                              .size(4)
                              .align(TextAlign.start)
                              .make(),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            child: InkWell(
                              onTap: () => {},
                              child: otpackge.text
                                  .color(MyCustomColors.orangeCustomColor)
                                  .extraBold
                                  .size(4)
                                  .make()
                                  .box
                                  .p12
                                  .make(),
                            )
                                .box
                                .rounded
                                .withShadow(
                                  [
                                    BoxShadow(
                                      color: MyCustomColors.orangeCustomColor
                                          .withOpacity(0.5),
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
                                )
                                .make()
                                .p12()
                                .centered(),
                          ),
                        ]),
                  ]),
            ]),
      ).scrollVertical(),
    ).p8();
  }
}
