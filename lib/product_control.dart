import 'package:flutter/material.dart';


/*ProductControl, es utilizada para la comunicación, en este caso es para crear el boton */
class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: (){
                  addProduct({'title': 'Chocolate', 'image': 'assets/food.jpg'});                  
                },
                child: Text('Add Product'),
              );
  }
 
}