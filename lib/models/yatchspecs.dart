class Yatch {
  final String name, price, image, topPic;
  final List<String> features;
  final List<Map<String, dynamic>> yatchModelSpecification;
  Yatch({
    this.topPic,
    this.yatchModelSpecification,
    this.name,
    this.price,
    this.image,
    this.features,
  });
}
