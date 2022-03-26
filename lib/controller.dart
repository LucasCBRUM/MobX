import 'package:mobx/mobx.dart';

import 'models/client.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  @observable
  var client = Client();

  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null;
  }

  static List<String> validEdMails = [
    "gmail.com",
    "hotmail.com",
    "yahoo.com.br",
    "outlook.com",
    "sunsoft.inf.br"
  ];

  //String valid = validEdMails.toString();

  List<String> testAdress = [];

  String? validateName() {
    if (client.name == null || client.name!.isEmpty) {
      return "Este campo é obrigatorio";
    } else if (client.name!.length < 3) {
      return "Seu nome precisa ter mais de 3 caracteres";
    }

    return null;
  }

  String? validateEmail() {
    testAdress = client.email!.split('@');

    // return testAdress.toString();
    if (client.email == null || client.email!.isEmpty) {
      return "Este campo é obrigatorio";
    } else if (!client.email!.contains("@")) {
      return "Este não é um email valido";
    } else if (!validEdMails.contains(testAdress[1])) {
      return "Esse não email não é registrado em nosso site";
    }
    return null;
  }

  String? validatecpf() {
    if (client.cpf == null || client.cpf.isEmpty) {
      return "Este campo é obrigatorio";
    } else if (client.cpf.length < 3) {
      return "Seu nome precisa ter mais de 3 caracteres";
    }

    return null;
  }


  dispose(){

    
  }

}




/**
    if (email!.contains('@')) {
      var testAdress = email;
      testAdress = email!.split('@') as String?;
    } */

