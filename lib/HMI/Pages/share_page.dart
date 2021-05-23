
import '../../Shared/global_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'APages/APage.dart';
import '../../Shared/SharedVariables.dart';
import '../../Shared/Translatable.dart';
import '../../Shared/custom_router.dart';

class SharePage extends APage {
  static Translatable name = CustomRouter.pageTranslations['Share'];
  static Locale locale = SharedVariables.myLocal;
  
 static Widget body = GlobalVicinumLocalizations.of('slogan',locale);

  SharePage() : super(name,body);

  }
