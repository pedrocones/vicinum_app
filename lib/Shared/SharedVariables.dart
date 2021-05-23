

import 'package:flutter/material.dart';

class SharedVariables {
// static variables for the whole app

static  Locale myLocal = Locale('es', '');

  static final languages = {

    'en': Locale('en', 'CA'),
    'fr': Locale('fr', 'CA'),
    'es': Locale('es', 'ES')

  };

  String username = "pcones";

  bool _isLogged = false;

  void setLogin(bool value) {
    _isLogged = value;
  }

  bool isLogged() => _isLogged;




}
