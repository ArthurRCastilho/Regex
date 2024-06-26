import 'package:flutter/material.dart';

class RegexScreen extends StatefulWidget {
  const RegexScreen({super.key});

  @override
  State<RegexScreen> createState() => _RegexScreenState();
}

class _RegexScreenState extends State<RegexScreen> {
  final TextEditingController _patternController = TextEditingController();
  final TextEditingController _textController = TextEditingController();

  void _showDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Resultado'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  bool isValid(String input, String pattern) {
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(input);
  }

  void _onButtonPressed(BuildContext context) {
    String pattern = _patternController.text;
    String text = _textController.text;
    bool result = isValid(text, pattern);
    String message = result ? 'A string é válida.' : 'A string não é válida.';
    _showDialog(context, message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REGEX'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _patternController,
              decoration: const InputDecoration(
                  label: Text('Digite a cadeia de validação'),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                label: Text('Digite a cadeia de texto a ser analisada'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _onButtonPressed(context),
              child: const Text('Validar Cadeia'),
            )
          ],
        ),
      ),
    );
  }
}
