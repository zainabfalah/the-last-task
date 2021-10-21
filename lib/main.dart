import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'models/theme.dart';
import 'screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Fooder());
}

class Fooder extends StatelessWidget {
  const Fooder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderTheme.light();
    return MaterialApp(
      theme: theme,
      title: 'Fooder',
      home: const Home(),
    );
  }
}
