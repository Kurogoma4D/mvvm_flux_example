import 'package:change_notifier_example/data_classes/data_classes.dart';
import 'package:change_notifier_example/models/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostDetailViewModel extends ChangeNotifier {
  PostDetailViewModel({this.locator});

  final Locator locator;

  void onTapLike({@required Post post}) {
    locator<PostModel>().toggleLike(id: post.id);
  }
}
