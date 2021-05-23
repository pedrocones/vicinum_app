import 'package:flutter/material.dart';
import '../search_page.dart';
import '../share_page.dart';
import '../../../Shared/custom_router.dart';
import '../create_cause_page.dart';
import '../favorites_page.dart';
import '../filter_page.dart';
import '../home_page.dart';
import '../login_page.dart';

class ABottomBar extends StatefulWidget {
 

  @override
  _ABottomBarState createState() => _ABottomBarState();
}

class _ABottomBarState extends State<ABottomBar> {

_ABottomBarState() : super();

  PageController _pageController = PageController();

  List<Widget> _page = [
    HomePage(),
    FilterPage(),
    CreateCausePage(),
    FavoritesPage(),
    SharePage(),
    SearchPage(),
    LoginPage(),

  ];

  int _selectedIndex = 0;

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

  @override
  Widget build(BuildContext context) {


    print(' @ ABottomBar build ');
    Color selectedColor = Colors.green.shade800;
    Color unSelectedColor = Colors.grey.shade400;
    Color favoritesSelected = Colors.red.shade800;

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
          label: CustomRouter.pageTranslations['Home'].toStringShort(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.filter_alt,
              color: _selectedIndex == 1 ? selectedColor : unSelectedColor),
          label: CustomRouter.pageTranslations['Filter'].toStringShort(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline,
              color: _selectedIndex == 2 ? selectedColor : unSelectedColor),
          label: CustomRouter.pageTranslations['Contribute'].toStringShort(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite,
              color: _selectedIndex == 3 ? favoritesSelected : unSelectedColor),
          label: CustomRouter.pageTranslations['Favorites'].toStringShort(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.share,
              color: _selectedIndex == 4 ? selectedColor : unSelectedColor),
          label: CustomRouter.pageTranslations['Share'].toStringShort(),
        ),
      ]),
    );
  }
}
