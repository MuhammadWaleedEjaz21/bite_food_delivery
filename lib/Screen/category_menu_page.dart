import 'package:bite_food_delivery/Provider/category_provider.dart';
import 'package:bite_food_delivery/Widget/custom_app_bar.dart';
import 'package:bite_food_delivery/Widget/custom_category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryMenuPage extends ConsumerWidget {
  const CategoryMenuPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final category = ref.watch(categoryProvider);
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'All Categories',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        backButton: true,
      ),
      body: category.when(
        data: (data) => GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.h,
            crossAxisSpacing: 10.w,
          ),
          itemBuilder: (context, index) =>
              CustomCategoryCard(index: index, category: data[index]),
          itemCount: data.length,
          padding: EdgeInsets.all(15.w),
        ),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text(error.toString())),
      ),
    );
  }
}
