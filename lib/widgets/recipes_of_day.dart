import 'package:flutter/material.dart';

import 'package:hello_flutter/models/recipe.dart';

import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

class RecipeCardType {
  static const card1 = 'card1';
  static const card2 = 'card2';
  static const card3 = 'card3';
}

class RecipesOfTheDay extends StatelessWidget {
  final List<Recipe> recipes;
  RecipesOfTheDay({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recipes of the Day 🍳',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 16),
          Container(
            height: 400,
            color: Colors.transparent,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return buildCard(recipe);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 16);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(Recipe recipe) {
    if (recipe.cardType == RecipeCardType.card1) {
      return Card1();
    } else if (recipe.cardType == RecipeCardType.card2) {
      return Card2();
    } else if (recipe.cardType == RecipeCardType.card3) {
      return Card3();
    } else {
      throw Exception('This card doesn\'t exist yet');
    }
  }
}
