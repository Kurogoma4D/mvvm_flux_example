import 'package:value_notifier_example/controllers/controllers.dart';
import 'package:value_notifier_example/data_classes/data_classes.dart';
import 'package:value_notifier_example/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:value_notifier_example/viewmodels/viewmodels.dart';

class HomePage extends StatelessWidget {
  const HomePage._({Key key}) : super(key: key);

  static const routeName = '/home';

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeViewModel(locator: context.read),
        )
      ],
      child: const HomePage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HOME')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text('投稿一覧'),
          ),
          const SizedBox(height: 4),
          Expanded(
            child: const _PostList(),
          ),
        ],
      ),
    );
  }
}

class _PostList extends StatelessWidget {
  const _PostList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posts = context.select((PostState state) => state.value.posts);
    return posts.isEmpty
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.separated(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return _PostTile(index);
            },
            separatorBuilder: (context, _) => Divider(color: Colors.black26),
          );
  }
}

class _PostTile extends StatelessWidget {
  const _PostTile(this.index, {Key key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final post = context.select((PostState state) => state.value.posts[index]);
    return ListTile(
      key: ValueKey(post.id + post.hashCode),
      leading: CircleAvatar(
        child: ClipOval(
          child: Image.network(post.user.profileImage),
        ),
      ),
      title: Text(
        post.text,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: LikeButton(
        isLiked: post.isLiked,
        onTap: () => context.read<HomeViewModel>().onTapLike(post: post),
      ),
      onTap: () => context.read<HomeViewModel>().onTapPost(index: index),
    );
  }
}
