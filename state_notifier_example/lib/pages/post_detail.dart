import 'package:state_notifier_example/data_classes/data_classes.dart';
import 'package:state_notifier_example/viewmodels/viewmodels.dart';
import 'package:state_notifier_example/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostDetail extends StatelessWidget {
  const PostDetail._(this.index, {Key key}) : super(key: key);

  final int index;

  static const routeName = '/post_detail';

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => PostDetailViewModel(locator: context.read)),
      ],
      child: Builder(
        builder: (context) {
          final arguments = ModalRoute.of(context).settings.arguments as int;
          return PostDetail._(arguments);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final post = context.select((PostList state) => state.posts[index]);
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.user.name}さんの投稿'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Text(
              post.text,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Center(
              child: _LikeArea(index),
            )
          ],
        ),
      ),
    );
  }
}

class _LikeArea extends StatelessWidget {
  const _LikeArea(this.index, {Key key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final post = context.select((PostList state) => state.posts[index]);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('いいね！'),
        LikeButton(
          isLiked: post.isLiked,
          onTap: () =>
              context.read<PostDetailViewModel>().onTapLike(post: post),
        ),
      ],
    );
  }
}
