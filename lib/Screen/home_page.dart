import 'package:bite_food_delivery/Provider/category_provider.dart';
import 'package:bite_food_delivery/Provider/restaurants_provider.dart';
import 'package:bite_food_delivery/Screen/cart_screen.dart';
import 'package:bite_food_delivery/Screen/category_menu_page.dart';
import 'package:bite_food_delivery/Screen/category_restaurant_menu.dart';
import 'package:bite_food_delivery/Screen/restaurant_menu_page.dart';
import 'package:bite_food_delivery/Widget/custom_app_bar.dart';
import 'package:bite_food_delivery/Widget/custom_category_card.dart';
import 'package:bite_food_delivery/Widget/custom_header_tile.dart';
import 'package:bite_food_delivery/Widget/custom_restaurant_card.dart';
import 'package:bite_food_delivery/Widget/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryAsync = ref.watch(categoryProvider);
    final restaurantAsync = ref.watch(restaurantProvider);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: CustomAppBar(
        leading: Image.asset('assets/images/logo.png', fit: BoxFit.cover),
        title: ListTile(
          title: Text(
            'DELIVER TO',
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
          subtitle: Text(
            'Current Location',
            style: Theme.of(context).appBarTheme.toolbarTextStyle,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        trailing: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
            style: IconButton.styleFrom(
              backgroundColor: Theme.of(context).appBarTheme.iconTheme?.color,
            ),
            icon: Icon(
              size: 30.r,
              Icons.shopping_bag_outlined,
              color: Theme.of(context).appBarTheme.actionsIconTheme?.color,
            ),
          ),
          15.horizontalSpace,
        ],
      ),
      body: categoryAsync.when(
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        loading: () => Center(child: CircularProgressIndicator()),
        data: (data) => restaurantAsync.when(
          error: (error, stackTrace) => Center(child: Text(error.toString())),
          loading: () => Center(child: CircularProgressIndicator()),
          data: (restaurants) => ListView(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            children: [
              Row(
                children: [
                  Text(
                    'Hey Halal,',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    ' Good Morning',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
              15.verticalSpace,
              CustomSearchBar(hintText: 'Search Your Favourite Restaurants'),
              15.verticalSpace,
              CustomHeaderTile(
                title: 'Categories',
                showSeeAll: true,
                pages: CategoryMenuPage(),
              ),
              15.verticalSpace,
              SizedBox(
                height: 150.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomCategoryCard(
                    index: index,
                    category: data[index],
                    page: CategoryRestaurantMenu(),
                  ),
                  separatorBuilder: (context, index) => 10.horizontalSpace,
                  itemCount: 4,
                ),
              ),
              15.verticalSpace,
              CustomHeaderTile(
                title: 'Restaurants',
                showSeeAll: true,
                pages: RestaurantMenuPage(),
              ),
              15.verticalSpace,
              ListView.separated(
                itemBuilder: (context, index) {
                  final restaurantRandom = [...restaurants]..shuffle();
                  return CustomRestaurantCard(
                    restaurant: restaurantRandom[index],
                  );
                },
                separatorBuilder: (context, index) => 20.verticalSpace,
                itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
