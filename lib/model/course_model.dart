class CourseModel {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double price; // use double for $99.9

  CourseModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
  });
}
