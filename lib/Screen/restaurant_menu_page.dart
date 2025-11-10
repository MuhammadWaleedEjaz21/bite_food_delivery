import 'package:bite_food_delivery/Provider/restaurants_provider.dart';
import 'package:bite_food_delivery/Widget/custom_app_bar.dart';
import 'package:bite_food_delivery/Widget/custom_restaurant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantMenuPage extends ConsumerWidget {
  const RestaurantMenuPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final restaurantAsync = ref.watch(restaurantProvider);
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'All Restaurants',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        backButton: true,
      ),
      body: restaurantAsync.when(
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        data: (data) => ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          itemBuilder: (context, index) {
            final restaurantRandom = [...data]..shuffle();
            return CustomRestaurantCard(restaurant: restaurantRandom[index]);
          },
          separatorBuilder: (context, index) => 20.verticalSpace,
          itemCount: data.length,
        ),
      ),
    );
  }
}
