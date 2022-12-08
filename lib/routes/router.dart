import 'package:go_router/go_router.dart';
import 'package:orderadd/mypath/mypaths.dart';
import 'package:orderadd/myuis/myaccountscreen.dart';
import 'package:orderadd/myuis/myhomescreen.dart';
import 'package:orderadd/myuis/mynewpackscreen.dart';
import 'package:orderadd/myuis/mynotiscreen.dart';
import 'package:orderadd/myuis/mypackagescreen.dart';
import 'package:orderadd/myuis/mysearchscreen.dart';
import 'package:orderadd/myuis/myslidemenu.dart';
import 'package:orderadd/myuis/mysplscreen.dart';

export 'package:go_router/go_router.dart';

GoRouter getRoute(String initialRoute) {
  return GoRouter(
    initialLocation: initialRoute,
    routes: [
      GoRoute(
          path: MyPath.splashPath,
          builder: (context, state) => const SplScreen(),
          routes: [
            GoRoute(
                name: MyPath.homePath,
                path: MyPath.homePath,
                builder: (context, state) => MyHomePage(),
                routes: [
                  GoRoute(
                    path: MyPath.sidemenuPath,
                    name: MyPath.sidemenuPath,
                    builder: (context, state) => Myslidemenu(),
                  ),
                  GoRoute(
                    path: MyPath.notiPath,
                    name: MyPath.notiPath,
                    builder: (context, state) => MynotiScreen(),
                  ),
                  GoRoute(
                    path: MyPath.searchPath,
                    name: MyPath.searchPath,
                    builder: (context, state) => MySearchScreen(),
                  ),
                  GoRoute(
                    path: MyPath.packageScreenPath,
                    name: MyPath.packageScreenPath,
                    builder: (context, state) => MyPackageScreen(),
                  ),
                  GoRoute(
                    path: MyPath.neworderScreenPath,
                    name: MyPath.neworderScreenPath,
                    builder: (context, state) => MyNewPackScreen(),
                  ),
                  GoRoute(
                    path: MyPath.accountScreenPath,
                    name: MyPath.accountScreenPath,
                    builder: (context, state) =>
                        MyAccountScreen(mysizeWidthbox: 0.09),
                  ),
                ]),
          ]),
    ],
    // errorBuilder: (context, state) {
    //   // final detail = {
    //   //   'path': state.fullpath,
    //   //   'params': state.params,
    //   //   'queryParams': state.queryParams,
    //   //   if (state.extra != null) 'extra': state.extra.toString()
    //   // };

    //   return const Scaffold(body: Center(child: Text('error')));
    // },
  );
}
