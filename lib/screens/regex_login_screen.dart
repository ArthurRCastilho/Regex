import 'package:flutter/material.dart';
import '../models/funcoes.dart';

class RegexLoginScreen extends StatefulWidget {
  const RegexLoginScreen({super.key});

  @override
  State<RegexLoginScreen> createState() => _RegexLoginScreenState();
}

class _RegexLoginScreenState extends State<RegexLoginScreen> {
  bool hiddenPassword = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REGEX LOGIN'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'E-mail'),
                validator: (value) => validarEmail(value!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Endereço'),
                validator: (value) => validarEndereco(value!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'CPF'),
                validator: (value) => validarCPF(value!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Nome Completo'),
                validator: (value) => validarNomeCompleto(value!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Data de Nascimento'),
                validator: (value) => validarDataNascimento(value!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'CEP'),
                validator: (value) => validarCEP(value!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Senha',
                  suffixIcon: IconButton(
                    icon: Icon(hiddenPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      hiddenPassword = !hiddenPassword;
                      setState(() {});
                    },
                  ),
                ),
                validator: (value) => validarSenha(value!),
                obscureText: hiddenPassword,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Tudo certo')));
                  }
                },
                label: const Text('Enviar'),
                icon: const Icon(Icons.send),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
