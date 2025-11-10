import 'package:bite_food_delivery/Model/restaurant_model.dart';
import 'package:bite_food_delivery/firebase_conn.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final restaurantProvider = FutureProvider((ref) async {
  final db = FirebaseConn().connection('Restaurants');
  final data = await db.get();
  final restaurants = data.docs
      .map((doc) => RestaurantModel.fromJson(doc.data()))
      .toList();
  return restaurants;
});
