// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PostList _$PostListFromJson(Map<String, dynamic> json) {
  return _PostList.fromJson(json);
}

class _$PostListTearOff {
  const _$PostListTearOff();

  _PostList call({List<Post> posts}) {
    return _PostList(
      posts: posts,
    );
  }
}

// ignore: unused_element
const $PostList = _$PostListTearOff();

mixin _$PostList {
  List<Post> get posts;

  Map<String, dynamic> toJson();
  $PostListCopyWith<PostList> get copyWith;
}

abstract class $PostListCopyWith<$Res> {
  factory $PostListCopyWith(PostList value, $Res Function(PostList) then) =
      _$PostListCopyWithImpl<$Res>;
  $Res call({List<Post> posts});
}

class _$PostListCopyWithImpl<$Res> implements $PostListCopyWith<$Res> {
  _$PostListCopyWithImpl(this._value, this._then);

  final PostList _value;
  // ignore: unused_field
  final $Res Function(PostList) _then;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(_value.copyWith(
      posts: posts == freezed ? _value.posts : posts as List<Post>,
    ));
  }
}

abstract class _$PostListCopyWith<$Res> implements $PostListCopyWith<$Res> {
  factory _$PostListCopyWith(_PostList value, $Res Function(_PostList) then) =
      __$PostListCopyWithImpl<$Res>;
  @override
  $Res call({List<Post> posts});
}

class __$PostListCopyWithImpl<$Res> extends _$PostListCopyWithImpl<$Res>
    implements _$PostListCopyWith<$Res> {
  __$PostListCopyWithImpl(_PostList _value, $Res Function(_PostList) _then)
      : super(_value, (v) => _then(v as _PostList));

  @override
  _PostList get _value => super._value as _PostList;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(_PostList(
      posts: posts == freezed ? _value.posts : posts as List<Post>,
    ));
  }
}

@JsonSerializable()
class _$_PostList with DiagnosticableTreeMixin implements _PostList {
  const _$_PostList({this.posts});

  factory _$_PostList.fromJson(Map<String, dynamic> json) =>
      _$_$_PostListFromJson(json);

  @override
  final List<Post> posts;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostList(posts: $posts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostList'))
      ..add(DiagnosticsProperty('posts', posts));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostList &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @override
  _$PostListCopyWith<_PostList> get copyWith =>
      __$PostListCopyWithImpl<_PostList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostListToJson(this);
  }
}

abstract class _PostList implements PostList {
  const factory _PostList({List<Post> posts}) = _$_PostList;

  factory _PostList.fromJson(Map<String, dynamic> json) = _$_PostList.fromJson;

  @override
  List<Post> get posts;
  @override
  _$PostListCopyWith<_PostList> get copyWith;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

class _$PostTearOff {
  const _$PostTearOff();

  _Post call(
      {int id = 0,
      String text = '',
      @JsonKey(name: 'is_liked') bool isLiked = false,
      User user}) {
    return _Post(
      id: id,
      text: text,
      isLiked: isLiked,
      user: user,
    );
  }
}

// ignore: unused_element
const $Post = _$PostTearOff();

mixin _$Post {
  int get id;
  String get text;
  @JsonKey(name: 'is_liked')
  bool get isLiked;
  User get user;

  Map<String, dynamic> toJson();
  $PostCopyWith<Post> get copyWith;
}

abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String text,
      @JsonKey(name: 'is_liked') bool isLiked,
      User user});

  $UserCopyWith<$Res> get user;
}

class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
    Object isLiked = freezed,
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      text: text == freezed ? _value.text : text as String,
      isLiked: isLiked == freezed ? _value.isLiked : isLiked as bool,
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String text,
      @JsonKey(name: 'is_liked') bool isLiked,
      User user});

  @override
  $UserCopyWith<$Res> get user;
}

class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
    Object isLiked = freezed,
    Object user = freezed,
  }) {
    return _then(_Post(
      id: id == freezed ? _value.id : id as int,
      text: text == freezed ? _value.text : text as String,
      isLiked: isLiked == freezed ? _value.isLiked : isLiked as bool,
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

@JsonSerializable()
class _$_Post extends _Post with DiagnosticableTreeMixin {
  const _$_Post(
      {this.id = 0,
      this.text = '',
      @JsonKey(name: 'is_liked') this.isLiked = false,
      this.user})
      : assert(id != null),
        assert(text != null),
        assert(isLiked != null),
        super._();

  factory _$_Post.fromJson(Map<String, dynamic> json) =>
      _$_$_PostFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: '')
  @override
  final String text;
  @override
  @JsonKey(name: 'is_liked')
  final bool isLiked;
  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Post(id: $id, text: $text, isLiked: $isLiked, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Post'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('isLiked', isLiked))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Post &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.isLiked, isLiked) ||
                const DeepCollectionEquality()
                    .equals(other.isLiked, isLiked)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(isLiked) ^
      const DeepCollectionEquality().hash(user);

  @override
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostToJson(this);
  }
}

abstract class _Post extends Post {
  const _Post._() : super._();
  const factory _Post(
      {int id,
      String text,
      @JsonKey(name: 'is_liked') bool isLiked,
      User user}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  int get id;
  @override
  String get text;
  @override
  @JsonKey(name: 'is_liked')
  bool get isLiked;
  @override
  User get user;
  @override
  _$PostCopyWith<_Post> get copyWith;
}
