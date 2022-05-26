class Food {
  final int id;
  final String name;
  final String imageUrl;
  final String desc;
  final String waitTime;
  final double score;
  final double price;
  final String cal;
  final double quantity;
  List<Map<String, String>> ingredients;
  final String about;
  final bool highlight;
  final String keyFactor;

  Food({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.desc,
    required this.waitTime,
    required this.score,
    required this.price,
    required this.cal,
    required this.quantity,
    required this.about,
    this.highlight = false,
    required this.ingredients,
    required this.keyFactor,
  });
}
