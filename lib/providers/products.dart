import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: '1',
      title: 'test1',
      description:
          'somethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomething',
      price: 5,
      imageUrl:
          'https://cdn-shop.conni.com.au/cache/catalog/micro-plush/sheet-new/Conni%20MP%20Protector%20A-1500x1500.jpg',
      isFavorite: false,
    ),
    Product(
      id: '2',
      title: 'test2',
      description:
          'somethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomething',
      price: 15,
      imageUrl:
          'https://i.pcmag.com/imagery/articles/00tLYTqwmgFvacZlYPc5ecO-8..1583853669.jpg',
      isFavorite: false,
    ),
    Product(
      id: '3',
      title: 'test3',
      description:
          'somethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomething',
      price: 5,
      imageUrl:
          'https://i.pcmag.com/imagery/articles/00tLYTqwmgFvacZlYPc5ecO-8..1583853669.jpg',
      isFavorite: false,
    ),
    Product(
      id: '4',
      title: 'test2',
      description:
          'somethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomethingsomething',
      price: 15,
      imageUrl:
          'https://i.pcmag.com/imagery/articles/00tLYTqwmgFvacZlYPc5ecO-8..1583853669.jpg',
      isFavorite: false,
    )
  ];

  var _showFavoritesOnly = false;

  List<Product> get items {
    if (_showFavoritesOnly) {
      return _items.where((prodItem) => prodItem.isFavorite).toList();
    } else {
      return [..._items];
    }
  }

  void addProduct(value) {
    _items.add(value);
  }

  String getProductImage(String id) {
    return _items.where((prodItem) => prodItem.id == id).toList()[0].imageUrl;
  }

  void showFavoritesOnly() {
    _showFavoritesOnly = true;
    notifyListeners();
  }

  void showAll() {
    _showFavoritesOnly = false;
    notifyListeners();
  }
}
