import 'dart:convert';

import 'package:value_notifier_example/data_classes/data_classes.dart';
import 'package:value_notifier_example/utils/utils.dart';
import 'package:http/http.dart';

class ApiClient {
  final _client = Client();
  static final _cache = ApiClient._();

  factory ApiClient() {
    return _cache;
  }

  ApiClient._();

  Future<List<Post>> getPosts() async {
    final result = await _client.get(API_BASE + '/posts');
    final json =
        (await jsonDecode(result.body) as List).cast<Map<String, dynamic>>();
    final list = json.map((e) => Post.fromJson(e)).toList();
    return list;
  }
}
