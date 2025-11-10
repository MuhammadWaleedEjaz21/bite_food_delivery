class RestaurantModel {
  final String category;
  final int delivery;
  final String imageUrl;
  final String name;
  final double rating;
  final int time;

  RestaurantModel({
    required this.category,
    required this.delivery,
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.time,
  });

  RestaurantModel copyWith({
    String? category,
    int? delivery,
    String? imageUrl,
    String? name,
    double? rating,
    int? time,
  }) {
    return RestaurantModel(
      category: category ?? this.category,
      delivery: delivery ?? this.delivery,
      imageUrl: imageUrl ?? this.imageUrl,
      name: name ?? this.name,
      rating: rating ?? this.rating,
      time: time ?? this.time,
    );
  }

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      category: json['category'] ?? '',
      delivery: json['delivery']?.toInt() ?? 0,
      imageUrl: json['imageUrl'] ?? '',
      name: json['name'] ?? '',
      rating: json['rating']?.toDouble() ?? 0.0,
      time: json['time']?.toInt() ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'delivery': delivery,
      'imageUrl': imageUrl,
      'name': name,
      'rating': rating,
      'time': time,
    };
  }
}
