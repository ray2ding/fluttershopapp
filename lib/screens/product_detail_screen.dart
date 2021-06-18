import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // const ProductDetailScreen({Key key}) : super(key: key);
  // final String title;
  // final String imageUrl;
  // final String description;
  // ProductDetailScreen(this.title, this.imageUrl, this.description);
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> product =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            product['title'],
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Center(
                child: Image.network(
              product['imageUrl'],
              fit: BoxFit.cover,
            )),
            Text(product['description'])
          ],
        ));
  }
}
