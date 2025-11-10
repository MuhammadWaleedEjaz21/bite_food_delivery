class CategoryModel {
  final String name;
  final String imageUrl;

  CategoryModel({required this.name, required this.imageUrl});

  CategoryModel copyWith({String? name, String? imageUrl}) {
    return CategoryModel(
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(name: json['name'], imageUrl: json['imageUrl']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'imageUrl': imageUrl};
  }
}
