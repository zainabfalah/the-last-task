import 'package:flutter/material.dart';
import 'package:hello_flutter/models/recipe.dart';
import 'package:hello_flutter/screens/recipe_details.dart';

class RecipeCrd extends StatelessWidget {
  final Recipe recipe;

  const RecipeCrd({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return RecipeDetailsScreen(recipe: recipe);
        }));
      },
      child: Card(
        color: Colors.grey,
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(recipe.imageUrl),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                recipe.name,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Servings ${recipe.servings}',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
