import 'package:flutter/material.dart';
import 'package:hello_flutter/models/recipe.dart';
import 'package:hello_flutter/widgets/recipe_card.dart';

class RecipeDetailsScreen extends StatelessWidget {
  final Recipe recipe;
  const RecipeDetailsScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: RecipeCrd(recipe: recipe),
    );
  }
}
