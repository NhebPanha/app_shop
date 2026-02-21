class ProductGridModel {
  final int id;
  final String name;
  final String image;
  final dynamic price;
  final dynamic afterdiscount;
  final String description; 
  final String category;
  final double rating;
  final int ratingCount; 
  final bool isFavorite;
  final List<dynamic> images;
  ProductGridModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.afterdiscount,
    required this.description,
    required this.category,
    required this.rating,
    required this.ratingCount,
    this.isFavorite = false, 
    this.images = const [],
  });
}

List<ProductGridModel> productList = [
  ProductGridModel(
    id: 1,
    name: "iPhone 15 Pro",
    image: "https://i.pinimg.com/1200x/cf/7d/60/cf7d6082bb199a2e2737662ea1bea94b.jpg",
    price: 1200,
    afterdiscount: 1100,
    description: "Latest Apple smartphone with A17 chip.",
    category: "Electronics",
    rating: 4.8,
    ratingCount: 120,
    isFavorite: true, 
    images: [
      "https://i.pinimg.com/1200x/cf/7d/60/cf7d6082bb199a2e2737662ea1bea94b.jpg","https://i.pinimg.com/1200x/cf/7d/60/cf7d6082bb199a2e2737662ea1bea94b.jpg","https://i.pinimg.com/1200x/cf/7d/60/cf7d6082bb199a2e2737662ea1bea94b.jpg","https://i.pinimg.com/1200x/cf/7d/60/cf7d6082bb199a2e2737662ea1bea94b.jpg","https://i.pinimg.com/1200x/cf/7d/60/cf7d6082bb199a2e2737662ea1bea94b.jpg","https://i.pinimg.com/1200x/cf/7d/60/cf7d6082bb199a2e2737662ea1bea94b.jpg","https://i.pinimg.com/1200x/cf/7d/60/cf7d6082bb199a2e2737662ea1bea94b.jpg",
    ],
  ),
  ProductGridModel(
    id: 2,
    name: "Samsung Galaxy S24",
    image: "https://i.pinimg.com/736x/06/70/df/0670df91bdb647db57a86e9170913dbe.jpg",
    price: 1000,
    afterdiscount: 950,
    description: "Flagship Samsung phone with amazing camera.",
    category: "Electronics",
    rating: 4.7,
    ratingCount: 98,
    images: [
      "https://i.pinimg.com/1200x/cf/7d/60/cf7d6082bb199a2e2737662ea1bea94b.jpg",
      "https://i.pinimg.com/736x/06/70/df/0670df91bdb647db57a86e9170913dbe.jpg",
      "https://i.pinimg.com/736x/95/96/75/95967588c8ba06d553a45185db8ed783.jpg",
    ]
  ),
  ProductGridModel(
    id: 3,
    name: "Nike Air Max",
    image: "https://i.pinimg.com/736x/95/96/75/95967588c8ba06d553a45185db8ed783.jpg",
    price: 180,
    afterdiscount: 150,
    description: "Comfortable running shoes.",
    category: "Fashion",
    rating: 4.5,
    ratingCount: 75,
  ),
  ProductGridModel(
    id: 4,
    name: "Adidas Hoodie",
    image: "https://i.pinimg.com/1200x/00/ff/da/00ffda57b3573253f5c160d6fa7831b5.jpg",
    price: 90,
    afterdiscount: 70,
    description: "Stylish and warm hoodie.",
    category: "Fashion",
    rating: 4.4,
    ratingCount: 60,
    isFavorite: true,
  ),
  ProductGridModel(
    id: 5,
    name: "MacBook Air M3",
    image: "https://i.pinimg.com/736x/5d/48/47/5d484767a8a08dda4ea15aeface484e3.jpg",
    price: 1500,
    afterdiscount: 1400,
    description: "Lightweight laptop with M3 chip.",
    category: "Electronics",
    rating: 4.9,
    ratingCount: 210,
  ),
  ProductGridModel(
    id: 6,
    name: "Sony Headphones",
    image: "https://example.com/images/sonyheadphones.jpg",
    price: 250,
    afterdiscount: 220,
    description: "Noise cancelling wireless headphones.",
    category: "Electronics",
    rating: 4.6,
    ratingCount: 85,
  ),
  ProductGridModel(
    id: 7,
    name: "Office Chair",
    image: "https://example.com/images/officechair.jpg",
    price: 300,
    afterdiscount: 260,
    description: "Ergonomic office chair for comfort.",
    category: "Furniture",
    rating: 4.3,
    ratingCount: 45,
  ),
  ProductGridModel(
    id: 8,
    name: "Coffee Maker",
    image: "https://example.com/images/coffeemaker.jpg",
    price: 120,
    afterdiscount: 99,
    description: "Automatic coffee machine.",
    category: "Home Appliance",
    rating: 4.2,
    ratingCount: 38,
  ),
  ProductGridModel(
    id: 9,
    name: "Gaming Keyboard",
    image: "https://example.com/images/gamingkeyboard.jpg",
    price: 150,
    afterdiscount: 130,
    description: "RGB mechanical gaming keyboard.",
    category: "Electronics",
    rating: 4.6,
    ratingCount: 110,
  ),
  ProductGridModel(
    id: 10,
    name: "Smart Watch",
    image: "https://example.com/images/smartwatch.jpg",
    price: 350,
    afterdiscount: 299,
    description: "Waterproof smart watch with health tracking.",
    category: "Electronics",
    rating: 4.5,
    ratingCount: 95,
  ),
];