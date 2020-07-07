import 'package:value_notifier_example/controllers/controllers.dart';
import 'package:value_notifier_example/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: _navigatorKey),
        ChangeNotifierProvider<PostController>(
          create: (_) => PostController(),
        ),
        ChangeNotifierProxyProvider<PostController, PostState>(
          create: (_) => PostState(),
          update: (_, controller, state) => PostState(controller.value),
        ),
      ],
      child: MaterialApp(
        title: 'ValueNotifier MVVM-Flux Example',
        navigatorKey: _navigatorKey,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('ja', 'JP'),
        ],
        home: HomePage.wrapped(),
        routes: {
          HomePage.routeName: (context) => HomePage.wrapped(),
          PostDetail.routeName: (context) => PostDetail.wrapped(),
        },
      ),
    );
  }
}
