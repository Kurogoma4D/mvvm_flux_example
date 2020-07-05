import 'package:change_notifier_example/data_classes/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
abstract class Post implements _$Post {
  const Post._();
  const factory Post({
    @Default(0) int id,
    @Default('') String text,
    @Default(false) @JsonKey(name: 'is_liked') bool isLiked,
    User user,
  }) = _Post;

  int get userId => user.id;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
