import 'package:flutter/material.dart';
import '../../Shared/SharedVariables.dart';
import '../../Shared/Translatable.dart';
import '../../Shared/global_localizations.dart';
import 'APages/APage.dart';

class CreateCausePage extends APage {

  static Translatable name =
      GlobalVicinumLocalizations.of('Contribute', SharedVariables.myLocal);
  
  static Locale locale = SharedVariables.myLocal;

  static Widget body = GlobalVicinumLocalizations.of('slogan', locale);

  CreateCausePage() : super(name, body);


Widget getBody(BuildContext context){

  return Text('did it');
}


}
