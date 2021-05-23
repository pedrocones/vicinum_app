import 'package:flutter/material.dart';
import '../../Shared/SharedVariables.dart';
import '../../Shared/Translatable.dart';
import '../../Shared/global_localizations.dart';
import 'APages/APage.dart';

class FilterPage extends APage {

  static Locale locale = SharedVariables.myLocal;

  static Translatable name = GlobalVicinumLocalizations.of('Filter',locale);

  static Widget body = GlobalVicinumLocalizations.of('slogan',locale);

  FilterPage() : super(name, body) {
    
    print('Page name: ' + name.toStringShort());
 }
}
