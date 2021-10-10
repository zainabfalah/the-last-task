import 'package:flutter/material.dart';
import 'package:hello_flutter/models/theme.dart';
import 'package:hello_flutter/screens/home.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyAppTheme.light(),
      darkTheme: MyAppTheme.dark(),
      home: const HomeScreen(),
    );
  }
}
