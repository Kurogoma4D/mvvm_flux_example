import 'package:value_notifier_example/data_classes/data_classes.dart';
import 'package:value_notifier_example/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostDetailViewModel extends ChangeNotifier {
  PostDetailViewModel({this.locator});

  final Locator locator;

  void onTapLike({@required Post post}) {
    locator<PostController>().toggleLike(id: post.id);
  }
}
