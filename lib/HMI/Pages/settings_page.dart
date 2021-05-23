import 'package:Vicinum/HMI/Pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Shared/SharedVariables.dart';
import '../../Shared/Translatable.dart';
import '../../Shared/global_localizations.dart';
import 'APages/APage.dart';
import 'home_page.dart';

class SettingsPage extends APage {
  static Locale locale = SharedVariables.myLocal;

  static Translatable name = GlobalVicinumLocalizations.of('Settings', locale);

  SettingsPage() : super(name, body);

  static Widget simpleBody = GlobalVicinumLocalizations.of('slogan', locale);

  static Widget body = Column(
    children: [
    
      homeButtom, 
      homeText, 
      Expanded(child: setLanguage), 
      bottomBar
      ],
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
  );

  static handleFunctionLogin(BuildContext context) {
    Navigator.of(context).pop();
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
  }

  static handleFunctionHomePage(BuildContext context) {
    print('handleFunctionHomePage trigged -> ');
    Navigator.of(context).pop();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }

  static Widget homeButtom = 
      ListTile(
        title: Text("Home"),
        leading: Icon(Icons.home_filled),
        onTap: () => handleFunctionHomePage,
      );

  static Widget homeText = Text('Home');
  static Widget setLanguage = Text('language');
  static Widget bottomBar = Text('bootomBar');

  static Widget navigation = ListView(
    children: <Widget>[
      ListTile(
        title: Text("Home"),
        trailing: Icon(Icons.arrow_forward),
        onTap: () => handleFunctionHomePage,
      ),
      ListTile(
        title: Text("AbouUs"),
        trailing: Icon(Icons.arrow_forward),
        onTap: () => handleFunctionHomePage,
      ),
      ListTile(
        title: Text("DashBoard"),
        trailing: Icon(Icons.arrow_forward),
        onTap: () => handleFunctionHomePage,
      ),
      ListTile(
        title: Text("Region"),
        trailing: Icon(Icons.arrow_forward),
        onTap: () => handleFunctionHomePage,
      ),
      ListTile(
        title: Text('Login'),
        trailing: Icon(Icons.arrow_forward),
        onTap: () => handleFunctionHomePage,
      ),
    ],
  );
}
