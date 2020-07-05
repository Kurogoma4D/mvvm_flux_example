// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostList _$_$_PostListFromJson(Map<String, dynamic> json) {
  return _$_PostList(
    posts: (json['posts'] as List)
        ?.map(
            (e) => e == null ? null : Post.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_PostListToJson(_$_PostList instance) =>
    <String, dynamic>{
      'posts': instance.posts,
    };

_$_Post _$_$_PostFromJson(Map<String, dynamic> json) {
  return _$_Post(
    id: json['id'] as int ?? 0,
    text: json['text'] as String ?? '',
    isLiked: json['is_liked'] as bool,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'is_liked': instance.isLiked,
      'user': instance.user,
    };
