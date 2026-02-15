class SliderModel {
  int id;
  String imagePath;
  SliderModel({required this.id, required this.imagePath});
}

List<SliderModel> sliderList = [
  SliderModel(id: 1, imagePath: "https://i.pinimg.com/1200x/08/08/e1/0808e1fb7ee460268f8e885c1af1fbba.jpg"),
  SliderModel(id: 2, imagePath: "https://i.pinimg.com/1200x/a2/4b/59/a24b59adb486affe8acba5cb535a4d25.jpg"),
  SliderModel(id: 3, imagePath: "https://i.pinimg.com/736x/1f/08/65/1f0865ae231cd9efe9bdd7147a92d4a1.jpg"),
];
