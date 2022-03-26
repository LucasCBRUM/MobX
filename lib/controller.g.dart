// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on _ControllerBase, Store {
  final _$clientAtom = Atom(name: '_ControllerBase.client');

  @override
  Client get client {
    _$clientAtom.reportRead();
    return super.client;
  }

  @override
  set client(Client value) {
    _$clientAtom.reportWrite(value, super.client, () {
      super.client = value;
    });
  }

  @override
  String toString() {
    return '''
client: ${client}
    ''';
  }
}
