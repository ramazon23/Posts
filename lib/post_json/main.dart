import 'dart:convert';

import 'package:http/http.dart';
import 'package:post_json/post_json/models.dart';

Future<void> main() async {
  Uri getAllPost = Uri.parse('https://dummyjson.com/posts/add');
  Response response = await get(getAllPost);

  Post post = Post.fromMap(jsonDecode(response.body));
  print(post.posts[1]);
}
