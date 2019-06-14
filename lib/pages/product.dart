import 'dart:async';

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: () {
        print('Back button pressed!');
        /*Salir del widget con tu propio metodo */
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: /*Center(
        child:*/
            Column(
          /*mainAxisAlignment: MainAxisAlignment.center,*/
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(title),
            ),
            RaisedButton(
              child: Text('DELETE'),
              color: Theme.of(context).primaryColor,
              onPressed: () => Navigator.pop(context, true),
            )
          ],
        ),
        /*),*/
      ),
    );
  }
}
