class FilterListModel {
  String name;
  String value;
  FilterListModel({required this.name, required this.value});
}
List<FilterListModel> filterListModel = [
  FilterListModel(name: "All", value: "all"),
  FilterListModel(name: "Electronics", value: "electronics"),
  FilterListModel(name: "Jewelery", value: "jewelery"),
  FilterListModel(name: "Men's Clothing", value: "men's clothing"),
];