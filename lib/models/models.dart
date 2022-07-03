import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    const Category(
      name: 'Hair',
      imageUrl: 'assets/images/hair.jpg',
    ),
    const Category(
      name: 'Logo',
      imageUrl: 'assets/images/logo1.jpeg',
    ),
    const Category(
      name: 'Beauty',
      imageUrl: 'assets/images/blondebabylights.jpg',
    ),
    const Category(
      name: 'Beauty2',
      imageUrl: 'assets/images/hairsalon.jpg',
    ),
    const Category(
      name: 'Beauty',
      imageUrl: 'assets/images/angela.gif',
    )
  ];
}
