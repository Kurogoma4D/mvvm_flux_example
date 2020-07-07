import 'package:value_notifier_example/apis/api_client.dart';
import 'package:value_notifier_example/data_classes/data_classes.dart';
import 'package:flutter/cupertino.dart';

/// ControllerをViewから直接参照しないためのラッパー

class PostState extends ValueNotifier<PostList> {
  PostState([PostList state]) : super(state ?? PostList(posts: []));
}

class PostController extends ValueNotifier<PostList> {
  PostController([PostList state]) : super(state ?? PostList(posts: [])) {
    init();
  }

  void init() async {
    value = PostList(posts: await ApiClient().getPosts());
  }

  void updateText({@required int id, @required String text}) {
    value = value.copyWith(posts: [
      for (final post in value.posts)
        if (post.id == id) post.copyWith(text: text) else post,
    ]);
  }

  void toggleLike({@required int id}) {
    value = value.copyWith(posts: [
      for (final post in value.posts)
        if (post.id == id) post.copyWith(isLiked: !post.isLiked) else post,
    ]);
  }
}
