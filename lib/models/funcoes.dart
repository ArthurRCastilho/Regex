String? validarEmail(String email) {
  RegExp regExp = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    caseSensitive: false,
  );

  bool isValid = regExp.hasMatch(email);
  if (isValid == false) {
    return 'Digite um E-mail valido';
  } else
    return null;
}

String? validarEndereco(String endereco) {
  RegExp regExp = RegExp(r'[a-zA-Z0-9]', caseSensitive: false);

  bool isValid = regExp.hasMatch(endereco);
  if (isValid == false) {
    return 'Digite um endereço valido';
  } else
    return null;
}

String? validarCPF(String cpf) {
  RegExp regExp = RegExp(
    r'^\d{3}\.\d{3}\.\d{3}-\d{2}$|^\d{11}$',
    caseSensitive: false,
  );

  bool isValid = regExp.hasMatch(cpf);
  if (isValid == false) {
    return 'Digite um CPF  valido';
  } else
    return null;
}

String? validarNomeCompleto(String nomeCompleto) {
  RegExp regExp = RegExp(r'[a-z] [a-z]', caseSensitive: false);

  bool isValid = regExp.hasMatch(nomeCompleto);
  if (isValid == false) {
    return 'Digite uma nome valida';
  } else
    return null;
}

String? validarDataNascimento(String dataNascimento) {
  RegExp regExp = RegExp(r'^\d{2}/\d{2}/\d{4}$', caseSensitive: false);

  bool isValid = regExp.hasMatch(dataNascimento);
  if (isValid == false) {
    return 'Digite uma data de nascimento valida';
  } else
    return null;
}

String? validarCEP(String cep) {
  RegExp regExp = RegExp(r'^\d{5}-\d{3}$', caseSensitive: false);

  bool isValid = regExp.hasMatch(cep);
  if (isValid == false) {
    return 'Digite um CEP valido';
  } else
    return null;
}

String? validarSenha(String senha) {
  RegExp regExp =
      RegExp(r'^(?=.*[A-Z])(?=.*[\W_]).{8,}$', caseSensitive: false);

  bool isValid = regExp.hasMatch(senha);
  if (isValid == false) {
    return 'Digite uma senha valida';
  } else
    return null;
}
