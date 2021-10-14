import 'package:flutter/material.dart';
import 'package:hello_flutter/API/post_api.dart';
import 'package:hello_flutter/models/post.dart';
import '../models/theme.dart';

class Card3 extends StatelessWidget {
  Card3({Key? key}) : super(key: key);
  final postApi = PostApi();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Post>>(
      future: postApi.getPosts(),
      builder: (context, snap) {
        final posts = snap.data;
        if (snap.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snap.connectionState == ConnectionState.active) {
          return Center(
            child: ListView.builder(
              itemCount: posts!.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Text(posts[index].title),
                );
              },
            ),
          );
        } else {
          return Center(
            child: Text('there is some error: ${snap.error}'),
          );
        }
      },
    );
  }
}
