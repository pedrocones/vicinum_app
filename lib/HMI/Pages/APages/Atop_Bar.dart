import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../HMI/Pages/login_page.dart';
import '../../../Shared/Translatable.dart';
import '../../../Shared/custom_router.dart';
import '../../../Shared/global_localizations.dart';
import '../about_page.dart';
import '../dashboard_page.dart';
import '../home_page.dart';
import '../search_page.dart';
import '../settings_page.dart';
import 'ABottomBar.dart';

class AtopBar {
  final BuildContext context;
  final Translatable pageName;

  Drawer _drawer;
  AppBar _appBar;
  bool _isLogged;
  Locale _locale;

  Locale getLocale() {
    return _locale ?? Locale('es', '');
  }

  AppBar getAppBar() => _appBar;

  Drawer getDrawer() => _drawer;

  void logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isUserLogged', false);
  }

  AtopBar({this.context, this.pageName}) {

    
    IconButton _plsLogin = IconButton(
        icon: Icon(Icons.account_circle),
        tooltip:
            GlobalVicinumLocalizations.of('Login', getLocale()).toStringShort(),
        onPressed: () {
          print('login');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        iconSize: 35);

    IconButton _logged = IconButton(
        icon: Icon(Icons.logout),
        tooltip: GlobalVicinumLocalizations.of('Logout', getLocale())
            .toStringShort(),
        onPressed: () {
          logout();
          print('logout');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ABottomBar()));
        },
        iconSize: 35);

    IconButton _search = IconButton(
        icon: Icon(Icons.search),
        tooltip: GlobalVicinumLocalizations.of('Search', getLocale())
            .toStringShort(),
        onPressed: () {
          print('search');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SearchPage()));
        },
        iconSize: 35);

    _appBar = AppBar(
      title: Center(child: Text(pageName.toStringShort())),
      //     leading: _home,
      actions: <Widget>[_search, (_isLogged ?? false) ? _logged : _plsLogin],
    );

    _drawer = Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Home"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ABottomBar()));
            },
          ),
          ListTile(
            title: Text("AbouUs"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => AboutUsPage()));
            },
          ),
          ListTile(
            title: Text("DashBoard"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => DashBoardPage()));
            },
          ),
          ListTile(
            title: Text("Region"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => HomePage()));
            },
          ),
          ListTile(
            title: Text('Login'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => LoginPage()));
            },
          ),
          ListTile(
            title: Text('Settings'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SettingsPage()));
            },
          ),
        ],
      ),
    );
  }
}
