import 'package:bite_food_delivery/Widget/custom_app_bar.dart';
import 'package:bite_food_delivery/Widget/custom_header_tile.dart';
import 'package:bite_food_delivery/Widget/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        ],
      ),
    );
  }
}
