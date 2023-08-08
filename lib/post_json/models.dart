// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Post {
  List<Posts> posts;
  int total;
  int skip;
  int limit;

  Post({
    required this.posts,
    required this.total,
    required this.skip,
    required this.limit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'posts': posts.map((x) => x.toMap()).toList(),
      'total': total,
      'skip': skip,
      'limit': limit,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      posts: (map['posts'] as List).map((e) => Posts.fromMap(e)).toList(),
      total: map['total'] as int,
      skip: map['skip'] as int,
      limit: map['limit'] as int,
    );
  }

  @override
  String toString() {
    return 'Post(posts: $posts, total: $total, skip: $skip, limit: $limit)';
  }
}

class Posts {
  int id;
  String title;
  String body;
  int userId;
  List tags;
  int reactions;

  Posts({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
    required this.tags,
    required this.reactions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'body': body,
      'userId': userId,
      'tags': tags,
      'reactions': reactions,
    };
  }

  factory Posts.fromMap(Map<String, dynamic> map) {
    return Posts(
      id: map['id'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
      userId: map['userId'] as int,
      tags: map['tags'] as List,
      reactions: map['reactions'] as int,
    );
  }

  @override
  String toString() {
    return 'Posts(id: $id, title: $title, body: $body, userId: $userId, tags: $tags, reactions: $reactions)';
  }
}
