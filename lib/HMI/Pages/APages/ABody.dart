import 'package:flutter/material.dart';

class ABody extends StatelessWidget {

final Widget myBody;
ABody(this.myBody);

 Widget build(BuildContext context) {

 print("inside Abody : " + myBody.toString());

  return myBody;

  }

}
