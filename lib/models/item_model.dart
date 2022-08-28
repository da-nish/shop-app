class ItemModel {
  final String name;
  final String image;
  final String id;
  final double price;
  final String description;
  int count;

  ItemModel(this.id, this.name, this.image, this.price, this.description,
      {this.count = 1});

  ItemModel.testData(this.id,
      {this.count = 1,
      this.description = "",
      this.image = "",
      this.name = "title",
      this.price = 20});
}
