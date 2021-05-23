import 'package:flutter/material.dart';

class Translatable extends Text {
  final Map<String, String> translations;
  final String defaultValue;
  final Locale locale;

  Translatable(
    this.defaultValue, {
    this.translations,
    this.locale,
  })  : assert(
          (translations[locale.languageCode]) != null,
          'translation of $defaultValue is required ',
        ),
        
        super(translations[locale.languageCode].toString() ?? defaultValue);

  //      assert(defaultValue != null, 'default Value is required ');

  //      print('translations[locale.languageCode] ' +translations[locale.languageCode].toString()+ ' default = '+defaultValue);

  @override
  String toStringShort() {
    if (translations[locale.languageCode] == null) {
      print('No available translation in this local for ' + this.defaultValue);
      return defaultValue ?? "Error";
    }
    assert(
        translations[locale.languageCode] != null,
        print('Not translation found for ' +
            defaultValue +
            ' in ' +
            locale.languageCode +
            ' results on = ' +
            translations[locale.languageCode]));

    return translations[locale.languageCode] ?? defaultValue;
  }
}
