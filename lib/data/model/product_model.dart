class ProductModel {
    int id;
    String title;
    dynamic price;
    String description;
    String category;
    String image;

    ProductModel({
        required this.id,
        required this.title,
        required this.price,
        required this.description,
        required this.category,
        required this.image,
    });
    factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"] ?? 0,
        title: json["title"] ?? "",
        price: json["price"] ?? "0.00",
        description: json["description"] ?? "",
        category: json["category"] ?? "",
        image: json["image"] ?? "",
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
    };
}

List productModel = [
  ProductModel(
    id: 0, 
    title: "Coffee", 
    description: "The best drink", 
    category: "Drink", 
    image: "https://i.pinimg.com/736x/f0/65/5f/f0655f2737da76be9b4ac435c65e3d9b.jpg", 
    price: "2.5",
  ),
  ProductModel(
    id: 0, 
    title: "Coffee", 
    description: "The best drink", 
    category: "Drink", 
    image: "https://i.pinimg.com/736x/ed/b1/e0/edb1e05a9d690459f20af8c0aa4f295f.jpg", 
    price: "2.5",
  ),ProductModel(
    id: 0, 
    title: "Coffee", 
    description: "The best drink", 
    category: "Drink", 
    image: "https://i.pinimg.com/736x/45/e2/33/45e233c9ebc205e7772b6bb6e73a7860.jpg", 
    price: "2.5",
  ),ProductModel(
    id: 0, 
    title: "Coffee", 
    description: "The best drink", 
    category: "Drink", 
    image: "https://i.pinimg.com/736x/f0/65/5f/f0655f2737da76be9b4ac435c65e3d9b.jpg", 
    price: "2.5",
  ),ProductModel(
    id: 0, 
    title: "Coffee", 
    description: "The best drink", 
    category: "Drink", 
    image: "https://i.pinimg.com/736x/f0/65/5f/f0655f2737da76be9b4ac435c65e3d9b.jpg", 
    price: "2.5",
  ),ProductModel(
    id: 0, 
    title: "Coffee", 
    description: "The best drink", 
    category: "Drink", 
    image: "https://i.pinimg.com/736x/f0/65/5f/f0655f2737da76be9b4ac435c65e3d9b.jpg", 
    price: "2.5",
  ),
];