import 'package:flutter/material.dart';

import 'SharedVariables.dart';
import 'Translatable.dart';

class CustomRouter {
  static Locale L = SharedVariables.myLocal;

  static Map<String, Translatable> pageTranslations = {
    'Home': Translatable('Home',
        translations: {'es': 'Principal', 'fr': 'Principale'}, locale: L),
    'Search': Translatable('Search',
        translations: {'es': 'Buscador', 'fr': 'Chercher'}, locale: L),
    'Contribute': Translatable('Contribute',
        translations: {'es': 'Contribuir', 'fr': 'Contribuer'}, locale: L),
    'Favorites': Translatable('Favorites',
        translations: {'es': 'Favoritos', 'fr': 'Favoris'}, locale: L),
    'My Contributions': Translatable('My Contributions',
        translations: {'es': 'Mis Contribuciones', 'fr': 'Mes contributions'},
        locale: L),
    'Menu': Translatable('Menu',
        translations: {'es': 'Menu', 'fr': 'Menu'}, locale: L),
    'Language': Translatable('Language',
        translations: {'es': 'Idioma', 'fr': 'Langue'}, locale: L),
    'Settings': Translatable('Settings',
        translations: {'es': 'Configuracion', 'fr': 'Réglages'}, locale: L),
    'Login': Translatable('Login',
        translations: {'es': 'Inicio', 'fr': 'Identifier'}, locale: L),
    'Logout': Translatable('Logout',
        translations: {'es': 'Desconectar', 'fr': 'Se déconnecter'}, locale: L),
    'Filter': Translatable('Filter',
        translations: {'es': 'Filtrar', 'fr': 'Filtre'}, locale: L),
    'Share': Translatable('Share',
        translations: {'es': 'Compartir', 'fr': 'Partager'}, locale: L),
    'Region': Translatable('Region',
        translations: {'es': 'Region', 'fr': 'Région'}, locale: L),
    'Account': Translatable('Account',
        translations: {'es': 'Cuenta', 'fr': 'Compte'}, locale: L),
  };

  // static Route<dynamic> allRoutes(RouteSettings settings) {
  //   final args = settings.arguments;

  //   switch (settings.name) {
  //     case homeRoute:
  //       return MaterialPageRoute(builder: (_) => HomePage());
  //   }
  //   return MaterialPageRoute(builder: (_) => NotFoundPage());
  // }

  // static List<Widget> buildScreens() => [
  //       HomePage(),
  //       FilterPage(),
  //       CreateCausePage(),
  //       FavoritesPage(),
  //       SharePage(),
  //     ];

  // static List<PersistentBottomNavBarItem> navBarItems() {
  //   print(' @ navBarItems ');
  //   return [
  //     PersistentBottomNavBarItem(
  //       icon: Icon(Icons.home_filled),
  //       title: pageTranslations['Home'].toStringShort(),
  //       activeColor: CupertinoColors.activeBlue,
  //       inactiveColor: CupertinoColors.systemGrey,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: Icon(Icons.filter_alt),
  //       title: pageTranslations['Filter'].toStringShort(),
  //       activeColor: CupertinoColors.activeBlue,
  //       inactiveColor: CupertinoColors.systemGrey,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: Icon(Icons.add_circle_outline),
  //       title: pageTranslations['Contribute'].toStringShort(),
  //       activeColor: CupertinoColors.activeBlue,
  //       inactiveColor: CupertinoColors.systemGrey,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: Icon(Icons.favorite),
  //       title: pageTranslations['Favorite'].toStringShort(),
  //       activeColor: CupertinoColors.activeBlue,
  //       inactiveColor: CupertinoColors.systemGrey,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: Icon(Icons.share),
  //       title: pageTranslations['Share'].toStringShort(),
  //       activeColor: CupertinoColors.activeBlue,
  //       inactiveColor: CupertinoColors.systemGrey,
  //     ),
  //   ];
  // }

  static List<BottomNavigationBarItem> bottomNavBarItems() {
    print(' @ navBarItems ');
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_filled, color: Colors.blue),
        label: pageTranslations['Home'].toStringShort(),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.filter_alt, color: Colors.blue),
        label: pageTranslations['Filter'].toStringShort(),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.add_circle_outline, color: Colors.blue),
        label: pageTranslations['Contribute'].toStringShort(),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite, color: Colors.blue),
        label: pageTranslations['Favorite'].toStringShort(),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.share, color: Colors.blue),
        label: pageTranslations['Share'].toStringShort(),
      ),
    ];
  }

  // pushNewScreen(
  //       context,
  //       screen: HomePage(),
  //       withNavBar: true, // OPTIONAL VALUE. True by default.
  //       pageTransitionAnimation: PageTransitionAnimation.cupertino,
  //   );
  //   pushNewScreenWithRouteSettings(
  //       context,
  //       settings: RouteSettings(name: MainScreen.routeName),
  //       screen: MainScreen(),
  //       withNavBar: true,
  //       pageTransitionAnimation: PageTransitionAnimation.cupertino,
  //   );
  //      pushDynamicScreen(
  //       context,
  //       screen: HomeModalScreen(),
  //       withNavBar: true,
  //   );

  //  return Container(
  //       height: 56.0, // in logical pixels
  //       padding: const EdgeInsets.symmetric(horizontal: 8.0),
  //       decoration: BoxDecoration(color: Colors.white),
  //       // Row is a horizontal, linear layout.
  //       child:
  // Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: <Widget>[
  //             IconButton(
  //               icon: Icon(Icons.home_filled),
  //               tooltip: aBottomBarTranslations['Home'].toStringShort(),
  //               onPressed: null,
  //             ),
  //             IconButton(
  //               icon: Icon(Icons.filter_alt),
  //               tooltip: aBottomBarTranslations['Filter'].toStringShort(),
  //               onPressed: null, // null disables the button
  //             ),
  //             IconButton(
  //               icon: Icon(Icons.add_circle_outline),
  //               tooltip: aBottomBarTranslations['Contribute'].toStringShort(),
  //               onPressed: null,
  //             ),
  //             IconButton(
  //               icon: Icon(Icons.favorite),
  //               tooltip: aBottomBarTranslations['Favorite'].toStringShort(),
  //               onPressed: null,
  //             ),
  //             IconButton(
  //               icon: Icon(Icons.share),
  //               tooltip: aBottomBarTranslations['Share'].toStringShort(),
  //               onPressed: null,
  //             ),
  //           ));

}
