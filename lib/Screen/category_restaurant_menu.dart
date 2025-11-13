import 'package:bite_food_delivery/Widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryRestaurantMenu extends ConsumerWidget {
  const CategoryRestaurantMenu({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(
        title: DropdownMenu(
          dropdownMenuEntries: [
            DropdownMenuEntry(value: 'one', label: 'Category 1'),
            DropdownMenuEntry(value: 'two', label: 'Category 2'),
            DropdownMenuEntry(value: 'three', label: 'Category 3'),
          ],
        ),
      ),
    );
  }
}
