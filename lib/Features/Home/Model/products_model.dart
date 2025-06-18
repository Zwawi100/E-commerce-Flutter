class ProductsModel {
  final int id;
  final String name;
  final String category;
  final String description;
  final int price;
  final int discount;
  final String image;

  ProductsModel(
      {required this.id,
      required this.name,
      required this.category,
      required this.description,
      required this.price,
      required this.discount,
      required this.image});

  factory ProductsModel.fromJson(Map<dynamic, dynamic> json) {
    return ProductsModel(
        id: json["id"],
        name: json["name"],
        category: json["category"],
        description: json["description"],
        price: json["price"],
        discount: json["discount"],
        image: json["image"]);
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, category: $category, price: $price, discount: $discount)';
  }
}
