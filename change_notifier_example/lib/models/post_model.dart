import 'package:change_notifier_example/apis/api_client.dart';
import 'package:change_notifier_example/data_classes/data_classes.dart';
import 'package:flutter/cupertino.dart';

class PostModel extends ChangeNotifier {
  PostModel() {
    init();
  }

  List<Post> state;

  void init() async {
    final data = await ApiClient().getPosts();
    state = List.unmodifiable(data);
    notifyListeners();
  }

  void updateText({@required int id, @required String text}) {
    state = [
      for (final post in state)
        if (post.id == id) post.copyWith(text: text) else post,
    ];
    notifyListeners();
  }

  void toggleLike({@required int id}) {
    /// List.unmodifiableのため，新しくリストを作って更新するしかない
    /// これならstateは直接addや書き換えができないので，設計的に安心になる
    state = [
      for (final post in state)
        if (post.id == id) post.copyWith(isLiked: !post.isLiked) else post,
    ];

    /// List.unmodifiableでなくすれば，↓の更新方法で更新はできる
    /// 更に，個別に更新できるためView側でリビルドの制御ができる
    /// ここはstateの安全性を取るか柔軟性を取るかの選択
    ///
    /// ```
    ///    final index = state.indexWhere((post) => post.id == id);
    ///    final post = state[index];
    ///    state[index] = post.copyWith(isLiked: !post.isLiked);
    /// ```
    notifyListeners();
  }
}
