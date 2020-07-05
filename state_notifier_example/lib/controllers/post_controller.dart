import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_example/apis/api_client.dart';
import 'package:state_notifier_example/data_classes/data_classes.dart';
import 'package:flutter/cupertino.dart';

class PostController extends StateNotifier<PostList> {
  PostController([PostList state]) : super(state ?? PostList(posts: [])) {
    init();
  }

  void init() async {
    state = PostList(posts: await ApiClient().getPosts());
  }

  void updateText({@required int id, @required String text}) {
    state = state.copyWith(posts: [
      for (final post in state.posts)
        if (post.id == id) post.copyWith(text: text) else post,
    ]);
  }

  void toggleLike({@required int id}) {
    state = state.copyWith(posts: [
      for (final post in state.posts)
        if (post.id == id) post.copyWith(isLiked: !post.isLiked) else post,
    ]);
  }
}
