import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;


  Products(this.products, {this.deleteProduct}) {
    print('[Products widget] Constructor');
  }

  /*Funcion para construir cada item*/
  Widget _buildProductItem(BuildContext context, int index) {
    print('[Products widget] buildProductItem');
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ProductPage(
                            products[index]['title'], products[index]['image']),
                      ),
                    ).then((bool value){
                        if(value){
                          deleteProduct(index);
                        }
                    }),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCard = Center(
      child: Text('No products found, please add some'),
    );
    if (products.length > 0) {
      /*Use ListView.Builder(...) to create dynamic and longer list */
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    print('[Products widget] Build');
    return _buildProductList();
  }

  /*@override
  Widget build(BuildContext context) {
    print('[Products widget] Build');
    return             ListView(
              children: products
              .map(
                (element) =>Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text(element)
                    ],
                    ),
                ),
                )
                .toList(),
            );
  }*/

}
