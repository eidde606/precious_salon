import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
      name: 'Hair',
      imageUrl: 'images/hair.jpg',
    ),
    Category(
      name: 'Hair Styles',
      imageUrl: 'images/hair-salon.jpg',
    ),
    Category(
      name: 'Beauty',
      imageUrl: 'images/blonde-babylights.jpg',
    )
  ];
}
