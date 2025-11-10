import 'package:bite_food_delivery/Model/category_model.dart';
import 'package:bite_food_delivery/firebase_conn.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryProvider = FutureProvider<List<CategoryModel>>((ref) async {
  final db = FirebaseConn().connection('Categories');
  final data = await db.get();
  final category = data.docs
      .map((e) => CategoryModel.fromJson(e.data()))
      .toList();
  return category;
});
