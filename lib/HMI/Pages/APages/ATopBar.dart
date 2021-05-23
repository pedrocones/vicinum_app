import 'package:flutter/material.dart';
import '../../../Shared/SharedVariables.dart';
import 'package:flag/flag.dart';
import '../../../Shared/Translatable.dart';
import '../../../Shared/custom_router.dart';

class ATopBar extends StatelessWidget with SharedVariables {
  // Fields in a Widget subclass are always marked "final".
  final Translatable title;
  final Map<String, Translatable> aTopBarTranslations =
      CustomRouter.pageTranslations;

  Widget language = Flag('ve', height: 30);

  ATopBar(this.title, {Key key}) : super(key: key);

//bool isLogged = true;

  Widget build(BuildContext context) {
    IconButton plsLogin = IconButton(
        icon: Icon(Icons.account_circle),
        tooltip: aTopBarTranslations['Login'].toStringShort(),
        onPressed: null,
        iconSize: 35);

    return Container(
      height: 56.0,
      // margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
      decoration: BoxDecoration(color: Colors.white),
      // Row is a horizontal, linear layout.
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: aTopBarTranslations['Menu'].toStringShort(),
            onPressed: null,
            iconSize: 35, // null disables the button
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: aTopBarTranslations['Search'].toStringShort(),
            onPressed: null,
            iconSize: 35, // null disables the button
          ),
          Expanded(child: Center(child: title)),
          language,
          if (isLogged()) language else plsLogin
        ],
      ),
    );
  }
}
