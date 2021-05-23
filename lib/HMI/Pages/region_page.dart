
import 'package:flutter/material.dart';
import '../../Shared/SharedVariables.dart';
import '../../Shared/Translatable.dart';
import '../../Shared/global_localizations.dart';
import 'APages/APage.dart';

class RegionPage extends APage {
   static Locale locale = SharedVariables.myLocal;

  static Translatable name = GlobalVicinumLocalizations.of('Region',locale);

  static Widget body = GlobalVicinumLocalizations.of('slogan',locale);
 
  RegionPage() : super(name, body);

 
}
