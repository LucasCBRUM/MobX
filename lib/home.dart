import 'package:cart_list/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

    return Scaffold(
        appBar: AppBar(title: Observer(
          builder: (_) {
            return Text(controller.isValid
                ? 'Formulario Validado'
                : 'Formulario Não Validado');
          },
        )),
        body: BodyWidget());
  }
}
