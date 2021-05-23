import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import '../../Shared/SharedVariables.dart';
import '../../Shared/Translatable.dart';
import '../../Shared/custom_router.dart';
import '../../Shared/global_localizations.dart';
import 'APages/APage.dart';

class SearchPage extends APage {
 
  
SearchPage() : super(name, body, optionalBottomBar: pageBar);

static Translatable name = CustomRouter.pageTranslations['Search'];

  static Locale locale = SharedVariables.myLocal;
  
static Widget body = GlobalVicinumLocalizations.of('slogan',locale);

static Widget pageBar = Row(
 
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: <Widget>[
        IconButton(
            icon: Icon(Icons.people),
            tooltip: CustomRouter.pageTranslations['Account'].toStringShort(),
            onPressed: null,
            iconSize: 35, // null disables the button
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: CustomRouter.pageTranslations['Search'].toStringShort(),
            onPressed: null,
            iconSize: 35, // null disables the button
          ),
          Flag('ve', height: 30),

],);


}

