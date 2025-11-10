import 'package:bite_food_delivery/Model/category_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryCard extends StatelessWidget {
  final int index;
  final CategoryModel category;
  final Widget? page;
  const CustomCategoryCard({
    super.key,
    required this.index,
    required this.category,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page!),
      ),
      child: Column(
        children: [
          Card(
            shape: Theme.of(context).cardTheme.shape,
            color: Theme.of(context).cardTheme.color,
            shadowColor: Theme.of(context).cardTheme.shadowColor,
            elevation: Theme.of(context).cardTheme.elevation,
            child: Padding(
              padding: EdgeInsets.all(15.r),
              child: Container(
                height: 81.h,
                width: 96.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(category.imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                ),
              ),
            ),
          ),
          7.5.verticalSpace,
          Text(category.name, style: Theme.of(context).textTheme.titleSmall),
        ],
      ),
    );
  }
}
