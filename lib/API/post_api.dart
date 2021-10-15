import 'package:flutter/material.dart';
import 'package:hello_flutter/models/post.dart';

///this represents the data that we get from the internet
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
    //Creates a future that runs its computation after a delay.
    // The computation will be executed after the given duration has passed
    //(here dart will continue after one second)
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
