import 'dart:convert';

import 'package:http/http.dart';
import 'package:post_json/post_json/models.dart';

Future<void> main() async {
  Uri getAllPost = Uri.parse('https://dummyjson.com/posts');
  Response response = await get(getAllPost);

  Posts posts = Posts.fromMap(jsonDecode(response.body));
  print(posts);
}
