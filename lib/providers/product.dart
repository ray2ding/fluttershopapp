import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;
  Product(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      this.imageUrl,
      this.isFavorite});

  void toggleFavoriteStatus() {
    this.isFavorite = !this.isFavorite;
    notifyListeners();
  }
}
