import 'package:bite_food_delivery/Model/bottom_bar_list_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

final currentIndexProvider = StateProvider<int>((ref) => 0);

class BottomBarWidget extends ConsumerWidget {
  final List<BottomBarListModel> items;
  const BottomBarWidget({required this.items, super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StylishBottomBar(
      currentIndex: ref.watch(currentIndexProvider),
      onTap: (index) => ref.read(currentIndexProvider.notifier).state = index,
      backgroundColor:
          Theme.of(context).bottomNavigationBarTheme.backgroundColor ??
          Colors.white.withAlpha(0),
      elevation: 0,
      items: items
          .map(
            (item) => BottomBarItem(
              icon: Icon(item.icon),
              title: Text(item.title),
              selectedIcon: Icon(item.selectedIcon),
              selectedColor:
                  Theme.of(
                    context,
                  ).bottomNavigationBarTheme.selectedItemColor ??
                  Colors.deepOrange,
              backgroundColor:
                  Theme.of(
                    context,
                  ).bottomNavigationBarTheme.selectedItemColor ??
                  Colors.deepOrange,
            ),
          )
          .toList(),
      option: BubbleBarOptions(
        bubbleFillStyle: BubbleFillStyle.fill,
        barStyle: BubbleBarStyle.horizontal,
        opacity: 0.3,
      ),
    );
  }
}
