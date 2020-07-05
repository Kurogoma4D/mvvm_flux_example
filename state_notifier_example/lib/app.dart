import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:state_notifier_example/data_classes/data_classes.dart';
import 'package:state_notifier_example/controllers/controllers.dart';
import 'package:state_notifier_example/pages/pages.dart';
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
        StateNotifierProvider<PostController, PostList>(
          create: (_) => PostController(),
        ),
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
