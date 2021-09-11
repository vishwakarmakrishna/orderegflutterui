import 'package:flutter/material.dart';
import 'package:orderadd/mypath/mypaths.dart';
import 'package:orderadd/myuis/myhomescreen.dart';
import 'package:orderadd/myuis/mynewpackscreen.dart';
import 'package:orderadd/myuis/mynotiscreen.dart';
import 'package:orderadd/myuis/mypackagescreen.dart';
import 'package:orderadd/myuis/mysearchscreen.dart';
import 'package:orderadd/myuis/myslidemenu.dart';
import 'package:orderadd/myuis/mysplscreen.dart';
import 'package:vrouter/vrouter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VRouter(
      title: 'OrderAdd',
      themeMode: ThemeMode.system,
      mode: VRouterMode.history,
      debugShowCheckedModeBanner: false,
      initialUrl: MyPath.splashKrPath,
      routes: [
        VWidget(
          path: MyPath.splashKrPath,
          widget: SplScreen(),
        ),
        VWidget(
          path: MyPath.homeKrPath,
          aliases: ['/Home', '/HOME', '/Main', '/MAIN'],
          widget: MyHomePage(),
        ),
        VWidget(
          path: MyPath.notiKrPath,
          aliases: [
            '/Home/noti',
            '/HOME/noti',
            '/HOME/Noti',
            '/Home/Noti',
          ],
          widget: MynotiScreen(),
        ),
        VWidget(
          path: MyPath.sidemenuKrPath,
          aliases: [
            '/Home/sidemenu',
            '/HOME/sidemenu',
            '/HOME/sidemenu',
            '/Home/sidemenu',
          ],
          widget: Myslidemenu(),
        ),
        VWidget(
          path: MyPath.packageScreenKrPath,
          aliases: [
            '/Home/package',
            '/HOME/package',
            '/HOME/package',
            '/Home/package',
          ],
          widget: MyPackageScreen(),
        ),
        VWidget(
          path: MyPath.searchKrPath,
          aliases: [
            '/Home/search',
            '/HOME/search',
            '/HOME/search',
            '/Home/search',
          ],
          widget: MySearchScreen(),
        ),
        VWidget(
          path: MyPath.neworderScreenKrPath,
          aliases: [
            '/Home/neworder',
            '/HOME/neworder',
            '/HOME/neworder',
            '/Home/neworder',
          ],
          widget: MyNewPackScreen(),
        ),
      ],
    );
  }
}
