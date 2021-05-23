//import 'package:js/js.dart.';

import 'package:Vicinum/Shared/SharedVariables.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../Shared/global_localizations.dart';
import '../create_cause_page.dart';
import '../favorites_page.dart';
import '../filter_page.dart';
import '../home_page.dart';
import '../login_page.dart';
import '../search_page.dart';
import '../share_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _pageController = PageController();
  bool _isLogged = false;

  List<Widget> _page = [
    HomePage(),
    FilterPage(),
    CreateCausePage(),
    FavoritesPage(),
    SharePage(),
    SearchPage(),
    LoginPage(),
  ];

  int _selectedIndex;

  void getSharedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isLogged = prefs.getBool('isUserLogged');

      print(' Main Page is user logged  ? ' + _isLogged.toString());
    });
  }

  void _onItemTapped(int selectedIndex) {
    print('_onItemTapped selectedIndex = ' + selectedIndex.toString());
    _pageController.jumpToPage(selectedIndex);
  }

  void _onPageChanged(int index) {
    print('onPageChanged Index = ' + index.toString());
    setState(() {
      _selectedIndex = index;
    });
  }

  void initState() {
    super.initState();

    getSharedData();
    print(' flag for favorites = ' + _isLogged.toString());

    if (_isLogged) {
      _selectedIndex = 3;
      _pageController = PageController(initialPage: 3);
    } else {
      _selectedIndex = 0;
      _pageController = PageController(initialPage: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    print(' @ MainPage build ');
    Color selectedColor = Colors.green.shade800;
    Color unSelectedColor = Colors.grey.shade400;
    Color favoritesSelected = Colors.red.shade800;

    Locale locale = SharedVariables.myLocal;

    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _page,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(onTap: _onItemTapped, items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,
              color: _selectedIndex == 0 ? selectedColor : unSelectedColor),
          label: GlobalVicinumLocalizations.of('Home', locale).toStringShort(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.filter_alt,
              color: _selectedIndex == 1 ? selectedColor : unSelectedColor),
          label:
              GlobalVicinumLocalizations.of('Filter', locale).toStringShort(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline,
              color: _selectedIndex == 2 ? selectedColor : unSelectedColor),
          label: GlobalVicinumLocalizations.of('Contribute', locale)
              .toStringShort(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite,
              color: _selectedIndex == 3 ? favoritesSelected : unSelectedColor),
          label: GlobalVicinumLocalizations.of('Favorites', locale)
              .toStringShort(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.share,
              color: _selectedIndex == 4 ? selectedColor : unSelectedColor),
          label: GlobalVicinumLocalizations.of('Share', locale).toStringShort(),
        ),
      ]),
    );
  }
}
