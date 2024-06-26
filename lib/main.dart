import 'package:flutter/material.dart';
import 'package:regex/screens/home_screen.dart';
import 'package:regex/screens/regex_login_screen.dart';
import 'package:regex/screens/regex_screen.dart';
import 'package:regex/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: Theme.of(context)
            .colorScheme
            .copyWith(primary: Colors.purpleAccent),
        primaryColor: Colors.purpleAccent,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(color: Colors.purpleAccent),
      ),
      routes: {
        Routes.HOME: (context) => const Homescreen(),
        Routes.REGEX: (context) => const RegexScreen(),
        Routes.REGEX_login: (context) => const RegexLoginScreen(),
      },
    );
  }
}
