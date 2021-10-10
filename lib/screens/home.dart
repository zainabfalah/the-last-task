import 'package:flutter/material.dart';
import 'package:hello_flutter/models/recipe.dart';
import 'package:hello_flutter/widgets/recipe_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe App'),
      ),
      body: ListView.builder(
        itemCount: Recipe.items.length,
        itemBuilder: (context, index) {
          return RecipeCrd(
            recipe: Recipe.items[index],
          );
        },
      ),
    );
  }
}
