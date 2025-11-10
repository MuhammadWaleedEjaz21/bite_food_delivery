import 'package:bite_food_delivery/Provider/restaurants_provider.dart';
import 'package:bite_food_delivery/Widget/custom_app_bar.dart';
import 'package:bite_food_delivery/Widget/custom_restaurant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularRestaurantPage extends ConsumerWidget {
  const PopularRestaurantPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final popularRestaurantAsync = ref.watch(restaurantProvider);
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'All Restaurants',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        backButton: true,
      ),
      body: popularRestaurantAsync.when(
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        loading: () => Center(child: CircularProgressIndicator()),
        data: (data) {
          final popular = data.where((e) => e.rating >= 4.5).toList();
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            itemBuilder: (context, index) =>
                CustomRestaurantCard(restaurant: popular[index]),
            separatorBuilder: (context, index) => 10.verticalSpace,
            itemCount: popular.length,
          );
        },
      ),
    );
  }
}
