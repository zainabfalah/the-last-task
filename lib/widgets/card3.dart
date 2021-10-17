import 'package:flutter/material.dart';
import 'package:hello_flutter/API/fooder_api.dart';
import 'package:hello_flutter/models/post.dart';
import 'package:hello_flutter/models/theme.dart';

class Card3 extends StatelessWidget {
  Card3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage(recipe.backgroundImage),
          //   fit: BoxFit.cover,
          // ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'title',
                    style: FooderTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                // children: createTagChips(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
