// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Product {
  String title;
  String Description;
  double price;
  String ImagePath;
  Product({
    required this.title,
    required this.Description,
    required this.price,
    required this.ImagePath,
  });


  Product copyWith({
    String? title,
    String? Description,
    double? price,
    String? ImagePath,
  }) {
    return Product(
      title: title ?? this.title,
      Description: Description ?? this.Description,
      price: price ?? this.price,
      ImagePath: ImagePath ?? this.ImagePath,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'Description': Description,
      'price': price,
      'ImagePath': ImagePath,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      title: map['title'] as String,
      Description: map['Description'] as String,
      price: map['price'] as double,
      ImagePath: map['ImagePath'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Product(title: $title, Description: $Description, price: $price, ImagePath: $ImagePath)';
  }

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.Description == Description &&
      other.price == price &&
      other.ImagePath == ImagePath;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      Description.hashCode ^
      price.hashCode ^
      ImagePath.hashCode;
  }
}
