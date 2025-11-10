import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final List<Widget>? trailing;
  final bool backButton;
  final bool blackTheme;

  const CustomAppBar({
    super.key,
    this.leading,
    this.title,
    this.trailing,
    this.backButton = false,
    this.blackTheme = false,
  });

  @override
  Size get preferredSize => Size.fromHeight(100.h);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      elevation: 0,
      toolbarHeight: preferredSize.height,
      titleSpacing: 0,
      leading: backButton
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(context).appBarTheme.surfaceTintColor,
                padding: EdgeInsets.only(
                  left: 15.w,
                  top: 10.h,
                  bottom: 10.h,
                  right: 5.w,
                ),
              ),
              icon: Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).appBarTheme.actionsIconTheme?.color,
              ),
            )
          : leading,
      title: title,
      actions: trailing,
      leadingWidth: Theme.of(context).appBarTheme.leadingWidth,
    );
  }
}
