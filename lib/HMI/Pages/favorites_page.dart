
import 'package:flutter/material.dart';

import '../../Shared/Translatable.dart';
import '../../Shared/custom_router.dart';
import 'APages/APage.dart';

class FavoritesPage extends APage {
  static Translatable name = CustomRouter.pageTranslations['Favorites'];

   static Widget body = ListView.builder(
    itemCount: 500,
    itemBuilder: (context,index){
      return Card(child:Column( children: <Widget>[
        Text('Favorites Scrollable page =  ${index+1}'),
      ],
      ),
      );
    }
    );

  FavoritesPage() : super(name, body, keepAlive: true) ;

}
