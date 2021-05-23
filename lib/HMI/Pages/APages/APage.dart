import 'package:Vicinum/HMI/Pages/APages/main_page.dart';
import 'package:Vicinum/Shared/SharedVariables.dart';
import 'package:Vicinum/Shared/global_localizations.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../Shared/Translatable.dart';
import '../about_page.dart';
import '../dashboard_page.dart';
import '../home_page.dart';
import '../login_page.dart';
import '../search_page.dart';
import '../settings_page.dart';
import 'ABottomBar.dart';
import 'Atop_Bar.dart';

class APage extends StatefulWidget {
  final Widget pageBody;
  final Widget optionalBottomBar;
  final Translatable pageName;
  final bool keepAlive;

  APage(this.pageName, this.pageBody,
      {this.optionalBottomBar, Key key, this.keepAlive = false})
      : super(key: key);

  @override
  _APageState createState() =>
      _APageState(pageName, pageBody, keepAlive, optionalBottomBar);
}

class _APageState extends State<APage> with AutomaticKeepAliveClientMixin {
  Widget pageBody;
  Widget stateBottomBar;
  Translatable pageName;
  bool keepAlive;
  static Locale _locale = SharedVariables.myLocal;
  // GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  _APageState(this.pageName, this.pageBody, this.keepAlive, this.stateBottomBar)
      : super();

  bool _isLogged = false;

  bool isLogged() => _isLogged;

  // @override
  // void initState() {
  //   super.initState();
  //   getSharedData();
  // }

  // @override
  // void didUpdateWidget(_APageState) {
  //   super.didUpdateWidget(_APageState);
  //   //TODO: IMPLEMENt this for proper object updates
  // }

  Locale getLocale() => _locale;

  void getSharedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isLogged = prefs.getBool('isUserLogged');

      print(' Apage is user logged  ? ' + _isLogged?.toString());
    });
  }

  void login() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isUserLogged', true);
  }

  void logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isUserLogged', false);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    pageBody = pageBody ?? getBody(context);

    print('pageName = '+ pageName.toStringShort()+' pageBody is ' + pageBody.toStringDeep());

    // print(' @ APage = ' +
    //     pageName?.toStringShort() +
    //     ' with Optional keeAlive is ' +
    //     keepAlive?.toString() +
    //     ' optional Bar is ' +
    //     (stateBottomBar)?.toString());

    return Scaffold(
       appBar: getAppBar(pageName, context,getLocale(),_isLogged),
      drawer: getDrawer(context,getLocale()),
        body: SafeArea(
          child: Column(children: [
            Expanded(child: Center(child: getBody(context))),
            stateBottomBar ?? Container(width: 0, height: 0),
          ]),
        ),


        );
  }

  @override
  bool get wantKeepAlive => keepAlive;

  Widget getBody(BuildContext context) {
    return pageBody ?? Text('need body override');
  }

  Widget getDrawer(BuildContext context, Locale locale) {
    Widget _drawer = Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: GlobalVicinumLocalizations.of("Home", locale),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ABottomBar()));
            },
          ),
          ListTile(
            title: GlobalVicinumLocalizations.of('about_us', locale),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => AboutUsPage()));
            },
          ),
          ListTile(
            title: GlobalVicinumLocalizations.of("DashBoard", locale),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => DashBoardPage()));
            },
          ),
          ListTile(
            title: GlobalVicinumLocalizations.of("Region", locale),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => HomePage()));
            },
          ),
          ListTile(
            title: GlobalVicinumLocalizations.of('Login', locale),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => LoginPage()));
            },
          ),
          ListTile(
            title: GlobalVicinumLocalizations.of('Settings', locale),
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

    print(' _drawer = ' + _drawer.toString());
    return _drawer;
  }

  getAppBar(Translatable pageName, BuildContext context, Locale locale, bool _isLogged) {
   
    PreferredSizeWidget _appBar;

    IconButton _plsLogin = IconButton(
        icon: Icon(Icons.account_circle),
        tooltip:
            GlobalVicinumLocalizations.of('Login', locale).toStringShort(),
        onPressed: () {
          print('login');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        iconSize: 35);

    IconButton _logged = IconButton(
        icon: Icon(Icons.logout),
        tooltip: GlobalVicinumLocalizations.of('Logout', locale)
            .toStringShort(),
        onPressed: () {
          //logout();
          print('logout');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainPage()));
        },
        iconSize: 35);

    IconButton _search = IconButton(
        icon: Icon(Icons.search),
        tooltip: GlobalVicinumLocalizations.of('Search', locale)
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

    print(' _appBar = ' + _appBar.toString());

    return _appBar;
  }


}
