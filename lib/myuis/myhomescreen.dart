import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:orderadd/extras/mycustcolors.dart';
import 'package:orderadd/mypath/mypaths.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vrouter/vrouter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double mysizeWidthbox = context.mq.size.width * 0.09;
    return Material(
      child: SafeArea(
        child: ZStack(
          [
            VStack([
              KrCustAppBar(title: 'Home', mysizeWidthbox: mysizeWidthbox),
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

class KrCustNavBar extends StatefulWidget {
  final double mysizeWidthbox;
  KrCustNavBar({required this.mysizeWidthbox});

  @override
  _KrCustNavBarState createState() =>
      _KrCustNavBarState(mysizeWidthbox: mysizeWidthbox);
}

class _KrCustNavBarState extends State<KrCustNavBar> {
  final double mysizeWidthbox;
  _KrCustNavBarState({required this.mysizeWidthbox});
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          GestureDetector(
            onTap: () => {
              context.vRouter.to(MyPath.homeKrPath),
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  'Home '
                      .text
                      .color(MyCustomColors.orangeCustomColor)
                      .extraBold
                      .size(4)
                      .make(),
                  Icon(
                    LineIcons.home,
                    size: mysizeWidthbox * 1,
                    color: MyCustomColors.orangeCustomColor,
                  ),
                ]).box.roundedLg.p12.color(Vx.white).outerShadowLg.make(),
          ),
          10.widthBox,
          GestureDetector(
            onTap: () => {
              context.vRouter.to(MyPath.packageScreenKrPath),
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  'Order '
                      .text
                      .color(MyCustomColors.orangeCustomColor)
                      .extraBold
                      .size(4)
                      .make(),
                  Icon(
                    LineIcons.shippingFast,
                    size: mysizeWidthbox * 1,
                    color: MyCustomColors.orangeCustomColor,
                  ),
                ]).box.roundedLg.p12.color(Vx.white).outerShadowLg.make(),
          ),
          10.widthBox,
          GestureDetector(
            onTap: () => {
              context.vRouter.to(MyPath.neworderScreenKrPath),
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  'New '
                      .text
                      .color(MyCustomColors.orangeCustomColor)
                      .extraBold
                      .size(4)
                      .make(),
                  Icon(
                    LineIcons.addToShoppingCart,
                    size: mysizeWidthbox * 1,
                    color: MyCustomColors.orangeCustomColor,
                  ),
                ]).box.roundedLg.p12.color(Vx.white).outerShadowLg.make(),
          ),
          10.widthBox,
          GestureDetector(
            onTap: () => {
              context.vRouter.to(MyPath.accountScreenKrPath),
            },
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                  'Account '
                      .text
                      .color(MyCustomColors.orangeCustomColor)
                      .extraBold
                      .size(4)
                      .make(),
                  Icon(
                    LineIcons.shopware,
                    size: mysizeWidthbox * 1,
                    color: MyCustomColors.orangeCustomColor,
                  ),
                ])
                .box
                .roundedLg
                .p12
                .color(Vx.white.withOpacity(0.9))
                .outerShadowSm
                .make(),
          ),
          10.widthBox,
        ]).box.roundedLg.p12.color(Vx.white.withOpacity(0.1)).make();
  }
}

class KrCustBodyExtra extends StatefulWidget {
  final double mysizeWidthbox;
  KrCustBodyExtra({required this.mysizeWidthbox});

  @override
  _KrCustBodyExtraState createState() =>
      _KrCustBodyExtraState(mysizeWidthbox: mysizeWidthbox);
}

class _KrCustBodyExtraState extends State<KrCustBodyExtra> {
  final double mysizeWidthbox;
  _KrCustBodyExtraState({required this.mysizeWidthbox});

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
                            'Daily Report'
                                .text
                                .bold
                                .color(MyCustomColors.orangeCustomColor)
                                .size(3.5)
                                .make(),
                          ],
                        ),
                        10.heightBox,
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              '540'
                                  .text
                                  .bold
                                  .color(MyCustomColors.blueCustomColor)
                                  .size(30)
                                  .make(),
                              'EARNED'
                                  .text
                                  .bold
                                  .size(4)
                                  .align(TextAlign.start)
                                  .make(),
                            ]),
                      ]),
                  Icon(
                    LineIcons.book,
                    size: mysizeWidthbox * 2,
                    color: MyCustomColors.blueCustomColor,
                  ),
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
                  children: [
                    10.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          'SUCESSFUL FULFILLMENT :'.text.size(4).make(),
                          '10'
                              .text
                              .bold
                              .color(MyCustomColors.greenCustomColor)
                              .size(4)
                              .align(TextAlign.center)
                              .make(),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          'CANCELLED FULFILLMENT :'.text.size(4).make(),
                          '2'
                              .text
                              .bold
                              .color(MyCustomColors.orangeCustomColor)
                              .size(4)
                              .align(TextAlign.center)
                              .make(),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          'REJECTED FULFILLMENT :'.text.size(4).make(),
                          '0'
                              .text
                              .bold
                              .color(MyCustomColors.orangeCustomColor)
                              .size(4)
                              .align(TextAlign.center)
                              .make(),
                        ]),
                  ],
                ).p4(),
                GestureDetector(
                  onTap: () => {
                    context.vRouter.to(MyPath.packageScreenKrPath),
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        'DETAILS:'
                            .text
                            .color(MyCustomColors.orangeCustomColor)
                            .extraBold
                            .size(4)
                            .make(),
                        Icon(
                          LineIcons.arrowCircleRight,
                          size: mysizeWidthbox * 1,
                          color: MyCustomColors.orangeCustomColor,
                        ),
                      ]).box.roundedLg.p12.color(Vx.white).outerShadowLg.make(),
                )
              ],
            ),
          ],
        )
            .box
            .rounded
            .p16
            .color(Vx.white)
            .outerShadowXl

            // .neumorphic(
            //     color: Vx.white, elevation: 15, curve: VxCurve.convex)
            .make(),
      ],
    ).p16();
  }
}

class KrCustAppBar extends StatelessWidget {
  final double mysizeWidthbox;
  final String title;
  KrCustAppBar({required this.mysizeWidthbox, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.mq.size.width,
      height: context.percentHeight * 6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            GestureDetector(
              onTap: () => {
                context.vRouter.to(MyPath.sidemenuKrPath),
              },
              child: Icon(
                LineIcons.bars,
                size: mysizeWidthbox,
                color: MyCustomColors.blueCustomColor,
              ),
            ),
            title.text.size(mysizeWidthbox).makeCentered(),
            mysizeWidthbox.widthBox,
            mysizeWidthbox.widthBox,
            mysizeWidthbox.widthBox,
            VxBadge(
              position: VxBadgePosition.rightTop,
              size: mysizeWidthbox * 0.4,
              color: MyCustomColors.orangeCustomColor,
              child: GestureDetector(
                onTap: () => {
                  context.vRouter.to(MyPath.notiKrPath),
                },
                child: Icon(
                  LineIcons.bellAlt,
                  size: mysizeWidthbox,
                  color: MyCustomColors.blueCustomColor,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {
                context.vRouter.to(MyPath.searchKrPath),
              },
              child: Icon(
                LineIcons.search,
                size: mysizeWidthbox,
                color: MyCustomColors.blueCustomColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KrCustBody extends StatefulWidget {
  final double mysizeWidthbox;
  KrCustBody({required this.mysizeWidthbox});

  @override
  _KrCustBodyState createState() =>
      _KrCustBodyState(mysizeWidthbox: mysizeWidthbox);
}

class _KrCustBodyState extends State<KrCustBody> {
  final double mysizeWidthbox;
  _KrCustBodyState({required this.mysizeWidthbox});
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VStack(
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'assets/persons/apala.jpg',
                  fit: BoxFit.cover,
                  width: context.mq.size.width * 0.25,
                  height: context.mq.size.height * 0.15,
                ).card.rounded.p8.make(),
                VStack([
                  HStack([
                    'Welcome'
                        .text
                        .size(context.mq.size.width * 0.05)
                        .makeCentered(),
                    WidthBox(context.mq.size.width * 0.01),
                    'Apala'
                        .text
                        .center
                        .size(context.mq.size.width * 0.05)
                        .color(MyCustomColors.orangeCustomColor)
                        .makeCentered(),
                    WidthBox(context.mq.size.width * 0.05),
                    MyRating(mysizeWidthbox)
                  ]),
                  // HeightBox(context.mq.size.height * 0.002),
                  HStack([
                    'Zone :'
                        .text
                        .size(context.mq.size.width * 0.035)
                        .makeCentered(),
                    WidthBox(context.mq.size.width * 0.01),
                    'A'
                        .text
                        .size(context.mq.size.width * 0.05)
                        .color(MyCustomColors.orangeCustomColor)
                        .makeCentered(),
                  ]),
                  // HeightBox(context.mq.size.height * 0.002),
                  HStack([
                    Transform(
                      transform: Matrix4.rotationX(pi),
                      alignment: Alignment.center,
                      origin: Offset(context.percentWidth * -1, 0),
                      child: Switch(
                        activeColor: Vx.green400,
                        value: _switchValue,
                        activeTrackColor: Vx.green300,
                        inactiveThumbColor: Colors.redAccent,
                        inactiveTrackColor: Colors.orange,
                        onChanged: (bool value) {
                          setState(() {
                            _switchValue = value;
                            if (_switchValue)
                              context.vRouter.to(MyPath.neworderScreenKrPath);
                          });
                        },
                      ).h4(context),
                    ),
                    _switchValue
                        ? 'Online'
                            .text
                            .size(context.mq.size.width * 0.04)
                            .color(MyCustomColors.greenCustomColor)
                            .makeCentered()
                        : 'Offline'
                            .text
                            .size(context.mq.size.width * 0.04)
                            .color(MyCustomColors.orangeCustomColor)
                            .makeCentered(),
                  ]),
                ]),
              ],
            ),
            VStack(
              [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                'Current Batch'
                                    .text
                                    .bold
                                    .color(MyCustomColors.blueCustomColor)
                                    .size(3.5)
                                    .make(),
                              ],
                            ),
                            10.heightBox,
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  'PICKUP IN: '.text.bold.size(5).make(),
                                  '90 minutes'
                                      .text
                                      .bold
                                      .color(MyCustomColors.orangeCustomColor)
                                      .size(4)
                                      .make(),
                                ]),
                          ]),
                      Icon(
                        LineIcons.shippingFast,
                        size: mysizeWidthbox * 2,
                        color: MyCustomColors.blueCustomColor,
                      ),
                    ]),
                VStack(
                  [
                    MyPackageCard(
                      afClick: () => {
                        context.vRouter.to(MyPath.packageScreenKrPath),
                      },
                      mysizeWidthbox: mysizeWidthbox,
                      packno: '102AS',
                      packsize: 'Medium',
                      packquantityno: '12',
                      packtype: 'Transfer',
                      packorderno: '3',
                    ),
                    MyPackageCard(
                      afClick: () => {
                        context.vRouter.to(MyPath.packageScreenKrPath),
                      },
                      mysizeWidthbox: mysizeWidthbox,
                      packno: '102AS',
                      packsize: 'Medium',
                      packquantityno: '12',
                      packtype: 'Delivery',
                      packorderno: '3',
                    ),
                    MyPackageCard(
                      afClick: () => {
                        context.vRouter.to(MyPath.packageScreenKrPath),
                      },
                      mysizeWidthbox: mysizeWidthbox,
                      packno: '102AS',
                      packsize: 'Small',
                      packquantityno: '4',
                      packtype: 'Transfer',
                      packorderno: '1',
                    )
                  ],
                ),
                10.heightBox,
              ],
            ).box.rounded.color(Vx.white).outerShadowXl.make(),
          ],
          crossAlignment: CrossAxisAlignment.center,
          alignment: MainAxisAlignment.spaceAround,
          axisSize: MainAxisSize.max,
        ).p16(),
      ],
      crossAlignment: CrossAxisAlignment.center,
      alignment: MainAxisAlignment.spaceAround,
      axisSize: MainAxisSize.max,
    );
  }
}

class MyRating extends StatelessWidget {
  MyRating(double mysizeWidthbox);

  @override
  Widget build(BuildContext context) {
    double mysizeWidthbox = context.mq.size.width * 0.05;
    return Stack(
      children: [
        HStack([
          Icon(
            LineIcons.starAlt,
            size: mysizeWidthbox,
            color: MyCustomColors.orangeCustomColor,
            semanticLabel: '4.9',
          ),
          '4.9'.text.color(MyCustomColors.orangeCustomColor).make()
        ])
            .box
            .p4
            .roundedLg
            .neumorphic(
              color: Vx.white,
              curve: VxCurve.emboss,
              elevation: 12,
            )
            .make()
      ],
    ).objectTopRight();
  }
}

class MyPackageCard extends StatelessWidget {
  final double mysizeWidthbox;
  final String packno;
  final String packsize;
  final String packtype;
  final String packquantityno;
  final String packorderno;
  final Function afClick;

  MyPackageCard({
    required this.afClick,
    required this.mysizeWidthbox,
    required this.packno,
    required this.packsize,
    required this.packquantityno,
    required this.packtype,
    required this.packorderno,
  });

  @override
  Widget build(BuildContext context) {
    bool packsizeColor = false;
    if (packsize == 'Small') {
      packsizeColor = true;
    } else {
      packsizeColor = false;
    }
    return Center(
      child: GestureDetector(
        onTap: () => afClick(),
        child: Container(
          height: context.mq.size.height * 0.1,
          width: context.mq.size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              context.safePercentHeight.heightBox,
              VStack(
                [
                  HStack(
                    [
                      HStack(
                        [
                          'PACKAGE '
                              .text
                              .size(3)
                              .extraBold
                              .color(MyCustomColors.orangeCustomColor)
                              .make(),
                          packno.text.semiBold
                              .color(MyCustomColors.orangeCustomColor)
                              .make(),
                        ],
                      ).objectTopLeft(),
                      50.widthBox,
                      HStack(
                        [
                          'Type: '.text.size(3).color(Vx.black).make(),
                          packtype.text.semiBold
                              .color(MyCustomColors.orangeCustomColor)
                              .make(),
                        ],
                      ).objectTopRight(),
                    ],
                    alignment: MainAxisAlignment.spaceAround,
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
                          'Size: '
                              .text
                              .size(3)
                              .extraBold
                              .color(Vx.black)
                              .make(),
                          packsizeColor
                              ? packsize.text
                                  .size(2.5)
                                  .color(MyCustomColors.greenCustomColor)
                                  .make()
                              : packsize.text
                                  .size(2.5)
                                  .color(MyCustomColors.yellowCustomColor)
                                  .make(),
                        ],
                      ),
                      // 15.widthBox,
                      HStack(
                        [
                          'Quantity: '.text.color(Vx.black).make(),
                          packquantityno.text
                              .color(MyCustomColors.blueCustomColor)
                              .make(),
                        ],
                      ),
                      // 15.widthBox,
                      HStack(
                        [
                          'Orders: '.text.color(Vx.black).make(),
                          packorderno.text
                              .color(MyCustomColors.orangeCustomColor)
                              .make(),
                        ],
                      ),
                    ],
                  ),
                ],
              ).p(5).centered(),
              context.safePercentHeight.heightBox,
            ],
          ),
        ).box.rounded.border(width: 0.5, style: BorderStyle.solid).make().p4(),
      ),
    );
  }
}
