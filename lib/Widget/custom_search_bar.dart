import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final String? hintText;
  const CustomSearchBar({super.key, this.hintText});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      shape: Theme.of(context).searchBarTheme.shape,
      elevation: Theme.of(context).searchBarTheme.elevation,
      backgroundColor: Theme.of(context).searchBarTheme.backgroundColor,
      padding: Theme.of(context).searchBarTheme.padding,
      hintStyle: Theme.of(context).searchBarTheme.hintStyle,
      textStyle: Theme.of(context).searchBarTheme.textStyle,
      leading: Icon(Icons.search),
      hintText: hintText,
    );
  }
}
