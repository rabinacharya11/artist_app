class Product {
  final String name;
  final String description;
  final String image;
  final double price;
  final double discountOff;

  Product({
    required this.name,
    required this.description,
    required this.image,
    required this.discountOff,
    required this.price,
  });
}

class Category {
  final String title;
  List<Product> products;
  Category({required this.products, required this.title});
}

List<Product> products = [
  Product(
      name: 'Shawl1',
      description: '',
      image:
          'https://i0.wp.com/handicraftsinnepal.com/wp-content/uploads/2021/02/YS36.jpg?fit=1500%2C1000&ssl=1',
      discountOff: 10,
      price: 4000),
];
List<Product> cartProducts = [
  Product(
      name: 'Shawl',
      description: '',
      image:
          'https://i0.wp.com/handicraftsinnepal.com/wp-content/uploads/2021/02/YS36.jpg?fit=1500%2C1000&ssl=1',
      discountOff: 10,
      price: 4000),
  Product(
      name: 'Shawl',
      description: '',
      image:
          'https://i0.wp.com/handicraftsinnepal.com/wp-content/uploads/2021/02/YS36.jpg?fit=1500%2C1000&ssl=1',
      discountOff: 10,
      price: 4000),
  Product(
      name: 'Shawl',
      description: '',
      image:
          'https://i0.wp.com/handicraftsinnepal.com/wp-content/uploads/2021/02/YS36.jpg?fit=1500%2C1000&ssl=1',
      discountOff: 10,
      price: 4000),
  Product(
      name: 'Shawl',
      description: '',
      image:
          'https://i0.wp.com/handicraftsinnepal.com/wp-content/uploads/2021/02/YS36.jpg?fit=1500%2C1000&ssl=1',
      discountOff: 10,
      price: 4000),
  Product(
      name: 'Shawl',
      description: '',
      image:
          'https://i0.wp.com/handicraftsinnepal.com/wp-content/uploads/2021/02/YS36.jpg?fit=1500%2C1000&ssl=1',
      discountOff: 10,
      price: 4000),
];

List<Category> categoryWiseProducts = [
  Category(products: products, title: 'Clothes'),
  Category(products: products, title: 'Sculpture'),
  Category(products: products, title: 'Statues'),
];
