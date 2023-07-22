import 'package:eldepizzacms/models/inventory/inventory_models.dart';

class Pizza {
  final int id;
  final String name;
  final double price;
  final int quantity;
  final String image;
  final List<Ingredient> ingredients;

  Pizza({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.image,
    required this.ingredients,
  });

  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(
        id: json['id'],
        name: json['name'],
        price: json['price'],
        quantity: json['quantity'],
        image: json['image'],
        ingredients: json['ingridients']);
  }
}
