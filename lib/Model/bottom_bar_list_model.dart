import 'package:flutter/material.dart';

class BottomBarListModel {
  String title;
  IconData icon;
  IconData selectedIcon;
  Widget page;

  BottomBarListModel({
    required this.title,
    required this.icon,
    required this.selectedIcon,
    required this.page,
  });
}
