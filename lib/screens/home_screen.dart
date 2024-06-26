import 'package:flutter/material.dart';
import 'package:regex/utils/routes.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});
  _selecetRegex(BuildContext context) {
    Navigator.of(context).pushNamed(Routes.REGEX);
  }

  _selecetRegexLogin(BuildContext context) {
    Navigator.of(context).pushNamed(Routes.REGEX_login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolha'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  _selecetRegex(context);
                },
                child: const Text('REGEX'),
              ),
            ),
            const SizedBox(height: 100),
            SizedBox(
              width: 300,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  _selecetRegexLogin(context);
                },
                child: const Text('REGEX Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
