import 'package:bite_food_delivery/Provider/category_provider.dart';
import 'package:bite_food_delivery/Widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryRestaurantMenu extends ConsumerWidget {
  const CategoryRestaurantMenu({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryAsync = ref.watch(categoryProvider);
    return Scaffold(
      appBar: CustomAppBar(
        title: categoryAsync.when(
          data: (categories) => DropdownMenu(
            hintText: 'Select Category',
            menuStyle: MenuStyle(),
            dropdownMenuEntries: categories
                .map(
                  (category) => DropdownMenuEntry(
                    value: category.name,
                    label: category.name,
                  ),
                )
                .toList(),
          ),
          loading: () => const Text('Loading...'),
          error: (error, stack) => const Text('Error'),
        ),
        trailing: [90.horizontalSpace],
      ),
    );
  }
}
