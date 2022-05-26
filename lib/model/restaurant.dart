class Restaurant {
  final String name;
  final String logoUrl;
  final String waitTime;
  final String distance;
  final String label;
  final String desc;
  final String score;
  List<Map<String, String>> meals;


  Restaurant({
    required this.name,
    required this.logoUrl,
    required this.waitTime,
    required this.distance,
    required this.label,
    required this.desc,
    required this.score,
    required this.meals,
  });
}
