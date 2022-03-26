import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
//import 'package:provider/provider.dart';

import 'controller.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  _textField({String? labelText, onChanged, String? Function()? errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<Controller>();
    final screenSize = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: screenSize.height * 0.5 > 400 ? screenSize.height * 0.5 : 400,
          width: screenSize.width * 0.7 > 500 ? screenSize.width * 0.7 : 500,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Observer(
                  builder: (_) {
                    return _textField(
                      errorText: controller.validateName,
                      labelText: "Name",
                      onChanged: controller.client.changeName,
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Observer(
                  builder: (_) {
                    return _textField(
                      errorText: controller.validateEmail,
                      labelText: "Email",
                      onChanged: controller.client.changeEmail,
                    );
                  },
                ),
              ),
              /* Observer(
                  builder: (_) {
                    return _textField(
                      errorText: controller.validateCPF,
                      labelText: "CPF",
                      onChanged: controller.client.changeCPF,
                    );
                  },
                )*/
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Observer(builder: (_) {
                    return ElevatedButton(
                      onPressed: controller.isValid ? () {} : null,
                      child: const Text('Salvar'),
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
