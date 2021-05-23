import 'package:flutter/material.dart';
import '../../Shared/SharedVariables.dart';
import '../../Shared/Translatable.dart';
import '../../Shared/global_localizations.dart';
import 'APages/APage.dart';

class AboutUsPage extends APage {

   static Locale locale = SharedVariables.myLocal;

  static Translatable name = GlobalVicinumLocalizations.of('about_us',locale);

  static Widget body = GlobalVicinumLocalizations.of('slogan',locale);
 
  AboutUsPage() : super(name, body);

 
}