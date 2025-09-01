import 'package:bite_food_delivery/Providers/time_provider.dart';
import 'package:bite_food_delivery/Providers/user_provider.dart';
import 'package:bite_food_delivery/Widgets/custom_app_bar.dart';
import 'package:bite_food_delivery/Widgets/heading_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        leading: Image.asset('assets/images/logo.png', fit: BoxFit.cover),
        title: ListTile(
          title: Text(
            'DELIVER TO',
            style: GoogleFonts.sen(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          subtitle: Consumer(
            builder: (context, ref, child) {
              final user = ref.watch(dummyuser);
              return Text(
                user.address,
                style: GoogleFonts.sen(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                overflow: TextOverflow.ellipsis,
              );
            },
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(backgroundColor: Colors.black),
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
              size: 30.r,
            ),
          ),
          15.horizontalSpace,
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        children: [
          Consumer(
            builder: (context, ref, child) {
              final time = ref.watch(timeProvider);
              final user = ref.watch(dummyuser);
              return Row(
                children: [
                  Text(
                    'Hey ${user.username.split(' ').first}, ',
                    style: GoogleFonts.sen(fontSize: 15.sp),
                  ),
                  Text(
                    'Good $time',
                    style: GoogleFonts.sen(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              );
            },
          ),
          15.verticalSpace,
          SearchBar(
            hintText: 'Search Restaurants',
            hintStyle: WidgetStatePropertyAll(GoogleFonts.sen(fontSize: 17.sp)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.5.r),
              ),
            ),
            elevation: WidgetStatePropertyAll(0),
            leading: Icon(Icons.search, color: Colors.grey.shade700),
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
            ),
          ),
          15.verticalSpace,
          HeadingTile(title: 'All Categories', showMore: true),
          15.verticalSpace,
        ],
      ),
    );
  }
}
