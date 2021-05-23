import 'package:flutter/material.dart';

import 'Translatable.dart';

class GlobalVicinumLocalizations {
  static Map<String, Map<String, String>> _translationsMap = {
    'appTitle': {
      'en': 'Vicinum Club',
      'es': 'Club de Vecinos',
      'fr': 'Club de Quartier'
    },
    'slogan': {
      'en': 'Loving Local Living',
      'es': 'Apreciando la Vida Local',
      'fr': 'Aimer la vie locale'
    },
    'Home': {'es': 'Principal', 'fr': 'Principale'},
    'Search': {'es': 'Buscador', 'fr': 'Chercher'},
    'Contribute': {'es': 'Contribuir', 'fr': 'Contribuer'},
    'Favorites': {'es': 'Favoritos', 'fr': 'Favoris'},
    'My Contributions': {'es': 'Contribuciones', 'fr': 'Mes contributions'},
    'Menu': {'es': 'Menu', 'fr': 'Menu'},
    'Language': {'es': 'Idioma', 'fr': 'Langue'},
    'Settings': {'es': 'Configuraciones', 'fr': 'Réglages'},
    'Login': {'es': 'Inicio', 'fr': 'Identifier'},
    'Logout': {'es': 'Desconectar', 'fr': 'Se déconnecter'},
    'Filter': {'es': 'Filtrar', 'fr': 'Filtre'},
    'Share': {'es': 'Compartir', 'fr': 'Partager'},
    'Region': {'es': 'Region', 'fr': 'Région'},
    'Account': {'es': 'Cuenta', 'fr': 'Compte'},
    'need_translation': {
      'en': 'Translation is needed',
      'es': 'Requirida Traduccion',
      'fr': 'Une traduction est requise'
    },
    'about_us': {
      'en': 'About Us',
      'es': 'Acerca de Nosotros',
      'fr': 'à propos de nous'
    },
    'DashBoard': {
      'en': 'DashBoard',
      'es': 'Sumario',
      'fr': 'Résumé'
    },
  };

  static Translatable of(String defaultValue, Locale myLocale) {

    Map<String, String> _translations = _translationsMap[defaultValue] ?? getDefault(defaultValue);
       
        return Translatable(defaultValue,
            translations: _translations, locale: myLocale);
      
    }
    
 static Map<String,String> getDefault(String defaultValue) {
        return {defaultValue:'need_translation'};
      }
}

