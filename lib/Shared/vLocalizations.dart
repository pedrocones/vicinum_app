import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter_localizations/flutter_localizations.dart';

class Vlocalization {
  Vlocalization(this.locale);

  final Locale locale;

  static Vlocalization of(BuildContext context) {
    return Localizations.of<Vlocalization>(context, Vlocalization);
  }

  static const Home = {'en': 'Home', 'es': 'Principal', 'fr': 'Principale'};
  static const Search = {'en': 'Search', 'es': 'Buscador', 'fr': 'Chercher'};
  static const Contribute = {
    'en': 'Contribute',
    'es': 'Contribuir',
    'fr': 'Contribuer'
  };
  static const Favorites = {
    'en': 'Favorites',
    'es': 'Favoritos',
    'fr': 'Favoris'
  };
  static const Menu = {'en': 'Menu', 'es': 'Menu', 'fr': 'Menu'};
  static const Language = {'en': 'Language', 'es': 'Idioma', 'fr': 'Langue'};
  static const Settings = {
    'en': 'Settings',
    'es': 'Configuracion',
    'fr': 'Réglages'
  };
  static const Login = {'en': 'Login', 'es': 'Inicio', 'fr': 'Identifier'};
  static const Logout = {
    'en': 'Logout',
    'es': 'Desconectar',
    'fr': 'Se déconnecter'
  };
  static const Filter = {'en': 'Filter', 'es': 'Filtrar', 'fr': 'Filtre'};
  static const Share = {'en': 'Share', 'es': 'Compartir', 'fr': 'Partager'};
  static const Region = {'en': 'Region', 'es': 'Region', 'fr': 'Région'};
  static const Account = {'en': 'Account', 'es': 'Cuenta', 'fr': 'Compte'};

  static Map<String, Map<String, String>> localizedValues = {
    'en': {
      'title': 'Hello World',
    },
    'es': {
      'title': 'Hola Mundo',
    },
  };

  String get title {
    return localizedValues[locale.languageCode]['title'];
  }


}

class VlocalizationDelegate extends LocalizationsDelegate<Vlocalization> {
  const VlocalizationDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<Vlocalization> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of Vlocalization.
    return SynchronousFuture<Vlocalization>(Vlocalization(locale));
  }

  @override
  bool shouldReload(VlocalizationDelegate old) => false;
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Vlocalization.of(context).title),
      ),
      body: Center(
        child: Text(Vlocalization.of(context).title),
      ),
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (BuildContext context) =>
          Vlocalization.of(context).title,
      localizationsDelegates: [
        const VlocalizationDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('es', ''),
      ],
      // Watch out: MaterialApp creates a Localizations widget
      // with the specified delegates. Vlocalization.of()
      // will only find the app's Localizations widget if its
      // context is a child of the app.
      home: DemoApp(),
    );
  }
}

void main() {
  runApp(Demo());
}
