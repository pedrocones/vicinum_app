
import 'package:flutter/material.dart';
import 'APages/APage.dart';
import '../../Shared/Translatable.dart';
import '../../Shared/custom_router.dart';

class HomePage extends APage {
  static Translatable name = CustomRouter.pageTranslations['Home'];
  static bool keepStatusAlive = true;



  static Widget body = ListView.builder(
    itemCount: 500,
    itemBuilder: (context,index){
      return Card(child:Column( children: <Widget>[
        Text('Title of the block =  ${index+1}'),
      ],
      ),
      );
    }
    );

  HomePage() : super(name,body, keepAlive: keepStatusAlive);

  }