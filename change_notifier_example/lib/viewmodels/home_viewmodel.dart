import 'package:change_notifier_example/data_classes/data_classes.dart';
import 'package:change_notifier_example/models/models.dart';
import 'package:change_notifier_example/pages/pages.dart';
import 'package:change_notifier_example/utils/utils.dart';
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
    locator<PostModel>().toggleLike(id: post.id);
  }
}
