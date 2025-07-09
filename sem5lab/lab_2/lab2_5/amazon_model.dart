//WAP to create design like e-commerce(Amazon,Flipkart) application dashboard.

class ProductModel {
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final double rating;
  final int reviews;
  final bool isPrime;

  ProductModel({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.reviews,
    required this.isPrime,
  });

  static List<ProductModel> getProducts() {
    return [
      ProductModel(
        name: 'Apple iPhone 15 Pro Max (256 GB)',
        description: '6.7-inch Super Retina XDR display with ProMotion',
        price: 1199.99,
        imageUrl:
        'https://m.media-amazon.com/images/I/81dT7CUY6GL._AC_UY218_.jpg',
        rating: 4.8,
        reviews: 2584,
        isPrime: true,
      ),
      ProductModel(
        name: 'Samsung Galaxy S24 Ultra',
        description: '6.8" QHD+ Dynamic AMOLED 2X Display',
        price: 1299.99,
        imageUrl:
        'https://m.media-amazon.com/images/I/71YdE55GwjL._AC_UY218_.jpg',
        rating: 4.7,
        reviews: 1853,
        isPrime: true,
      ),
      ProductModel(
        name: 'Apple AirPods Pro (2nd Generation)',
        description: 'Active Noise Cancelling Earbuds',
        price: 249.99,
        imageUrl:
        'https://m.media-amazon.com/images/I/61SUj2aKoEL._AC_UY218_.jpg',
        rating: 4.8,
        reviews: 45672,
        isPrime: true,
      ),
      ProductModel(
        name: 'Apple Watch Series 9',
        description: 'GPS 45mm Smart Watch',
        price: 399.99,
        imageUrl: 'https://m.media-amazon.com/images/I/71TMn2dnDyL.jpg',
        rating: 4.6,
        reviews: 3421,
        isPrime: true,
      ),
    ];
  }
}