import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

final currentIndexProvider = StateProvider<int>((ref) => 0);

class CustomBottomNavigationBar extends ConsumerWidget {
  final List<CustomBottomItem> items;
  const CustomBottomNavigationBar({super.key, required this.items});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, child) {
        final int currentIndex = ref.watch(currentIndexProvider);
        return StylishBottomBar(
          backgroundColor: Colors.white,
          items: items
              .map(
                (item) => BottomBarItem(
                  icon: Icon(item.icon),
                  title: Text(item.title),
                  selectedIcon: Icon(item.selectedicon),
                  selectedColor: Colors.orange,
                  backgroundColor: Colors.orange,
                ),
              )
              .toList(),
          currentIndex: currentIndex,
          onTap: (value) {
            ref.read(currentIndexProvider.notifier).state = value;
          },
          option: BubbleBarOptions(
            bubbleFillStyle: BubbleFillStyle.fill,
            barStyle: BubbleBarStyle.horizontal,
            opacity: .3,
          ),
        );
      },
    );
  }
}

class CustomBottomItem {
  final String title;
  final IconData icon;
  final IconData selectedicon;
  final Widget pages;

  CustomBottomItem({
    required this.title,
    required this.icon,
    required this.selectedicon,
    required this.pages,
  });
}
