import 'package:flutter/material.dart';
import 'package:orderadd/mypath/mypaths.dart';
import 'package:device_preview/device_preview.dart';
import 'package:orderadd/myuis/custom_scroll_behavior.dart';
import 'package:orderadd/routes/router.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoRouter approutes;
  @override
  void initState() {
    super.initState();
    approutes = getRoute(
      MyPath.splashPath,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scrollBehavior: MyScrollBehavior(),
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      title: 'OrderAdd',
      routerDelegate: approutes.routerDelegate,
      routeInformationParser: approutes.routeInformationParser,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
