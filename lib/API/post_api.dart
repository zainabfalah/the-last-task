import 'package:flutter/material.dart';
import 'package:hello_flutter/models/post.dart';

List posts = [
  {
    'title': 'hello',
    'content': 'thgwefkusehdsldjaksjcbadjfgjadskfjhcasnfc',
    'authorName': 'abbas',
  },
  {
    'title': 'hello',
    'content': 'thgwefkusehdsldjaksjcbadjfgjadskfjhcasnfc',
    'authorName': 'abbas',
  },
  {
    'title': 'hello',
    'content': 'thgwefkusehdsldjaksjcbadjfgjadskfjhcasnfc',
    'authorName': 'abbas',
  },
];

class PostApi {
  Future<List<Post>> getPosts() async {
    await Future.delayed(Duration(seconds: 1));

    List<Post> userPosts = [];

    for (var rawPost in posts) {
      userPosts.add(
        Post(
          title: rawPost['title'],
          content: rawPost['content'],
          authorName: rawPost['authorName'],
        ),
      );
    }
    throw FlutterError('network error');
    // return userPosts;
  }
}
