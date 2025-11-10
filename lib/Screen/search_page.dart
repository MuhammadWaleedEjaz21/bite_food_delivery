import 'package:bite_food_delivery/Provider/restaurants_provider.dart';
import 'package:bite_food_delivery/Screen/popular_restaurant.dart';
import 'package:bite_food_delivery/Widget/custom_app_bar.dart';
import 'package:bite_food_delivery/Widget/custom_header_tile.dart';
import 'package:bite_food_delivery/Widget/custom_restaurant_card.dart';
import 'package:bite_food_delivery/Widget/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Container(
          margin: EdgeInsets.all(22.r),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.search, color: Colors.white, size: 24.r),
        ),
        title: Text(
          'SEARCH',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        trailing: [
          IconButton(
            onPressed: () {},
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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        children: [
          CustomSearchBar(hintText: 'Search Your Favourite Restaurants'),
          15.verticalSpace,
          CustomHeaderTile(title: 'Recent Searches'),
          15.verticalSpace,
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 5.w,
              mainAxisSpacing: 5.h,
            ),
            itemBuilder: (context, index) => TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  side: BorderSide(color: Colors.deepOrange, width: 2.w),
                ),
              ),
              child: Text(
                'Search $index',
                style: GoogleFonts.sen(
                  color: Colors.deepOrange,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            itemCount: 5,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          ),
          20.verticalSpace,
          CustomHeaderTile(
            title: 'Popular Restaurants',
            showSeeAll: true,
            pages: PopularRestaurantPage(),
          ),
          15.verticalSpace,
          ref
              .watch(restaurantProvider)
              .when(
                data: (restaurants) => ListView.separated(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final popularRestaurants = restaurants
                        .where((item) => item.rating >= 4.5)
                        .toList();
                    return CustomRestaurantCard(
                      restaurant: popularRestaurants[index],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 10.h),
                ),
                loading: () => SizedBox(
                  height: 100.h,
                  child: Center(child: CircularProgressIndicator()),
                ),
                error: (error, stack) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Text('Failed to load restaurants'),
                ),
              ),
        ],
      ),
    );
  }
}
