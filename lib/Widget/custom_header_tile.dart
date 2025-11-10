import 'package:flutter/material.dart';

class CustomHeaderTile extends StatelessWidget {
  final String title;
  final bool showSeeAll;
  final Widget? pages;
  const CustomHeaderTile({
    super.key,
    required this.title,
    this.showSeeAll = false,
    this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: Theme.of(context).listTileTheme.contentPadding,
      title: Text(title, style: Theme.of(context).listTileTheme.titleTextStyle),
      trailing: showSeeAll
          ? TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pages!),
                );
              },
              label: Text(
                'See All',
                style: Theme.of(
                  context,
                ).listTileTheme.leadingAndTrailingTextStyle,
              ),
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(
                  context,
                ).listTileTheme.leadingAndTrailingTextStyle!.decorationColor,
              ),
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Theme.of(context).listTileTheme.iconColor,
              ),
              iconAlignment: IconAlignment.end,
            )
          : null,
    );
  }
}
