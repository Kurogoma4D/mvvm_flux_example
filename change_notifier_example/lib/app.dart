import 'package:change_notifier_example/models/models.dart';
import 'package:change_notifier_example/pages/pages.dart';
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
        ChangeNotifierProvider(create: (_) => PostModel()),
      ],
      child: MaterialApp(
        title: 'ChangeNotifier MVVM-Flux Example',
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
