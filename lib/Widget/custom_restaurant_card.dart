import 'package:bite_food_delivery/Model/restaurant_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRestaurantCard extends StatelessWidget {
  final RestaurantModel restaurant;
  const CustomRestaurantCard({super.key, required this.restaurant});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: CachedNetworkImageProvider(restaurant.imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
          title: Text(
            restaurant.name,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          subtitle: Text(
            restaurant.category,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        Row(
          spacing: 24.w,
          children: [
            Row(
              children: [
                Icon(Icons.star_outline, size: 22.r, color: Colors.deepOrange),
                5.horizontalSpace,
                Text(
                  '${restaurant.rating}',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.delivery_dining,
                  size: 22.r,
                  color: Colors.deepOrange,
                ),
                5.horizontalSpace,
                Text(
                  '${restaurant.delivery}',
                  style: GoogleFonts.sen(
                    fontSize: 16.sp,
                    color: Theme.of(
                      context,
                    ).listTileTheme.titleTextStyle!.color,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.timelapse, size: 22.r, color: Colors.deepOrange),
                5.horizontalSpace,
                Text(
                  '${restaurant.time} min',
                  style: GoogleFonts.sen(
                    fontSize: 16.sp,
                    color: Theme.of(
                      context,
                    ).listTileTheme.titleTextStyle!.color,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
