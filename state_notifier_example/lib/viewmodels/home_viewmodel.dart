import 'package:state_notifier_example/data_classes/data_classes.dart';
import 'package:state_notifier_example/controllers/controllers.dart';
import 'package:state_notifier_example/pages/pages.dart';
import 'package:state_notifier_example/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({this.locator});

  final Locator locator;

  void onTapPost({@required int index}) {
    final context =
        locator<GlobalKey<NavigatorState>>().currentState.descendantContext;
    Navigator.of(context).pushNamed(PostDetail.routeName, arguments: index);
  }

  void onTapLike({@required Post post}) {
    locator<PostController>().toggleLike(id: post.id);
  }
}
