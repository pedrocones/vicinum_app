
import 'package:flutter/cupertino.dart';
import '../../Shared/SharedVariables.dart';
import '../../Shared/Translatable.dart';
import '../../Shared/global_localizations.dart';
import 'APages/APage.dart';

class LoginPage extends APage {
 

 static Locale locale = SharedVariables.myLocal;

  static Translatable name = GlobalVicinumLocalizations.of('Login',locale);

  static Widget body = GlobalVicinumLocalizations.of('slogan',locale);


  LoginPage() : super(name,body);

  }
