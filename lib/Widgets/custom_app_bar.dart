import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  final bool backButton;
  final bool blackTheme;
  const CustomAppBar({
    super.key,
    this.leading,
    this.title,
    this.actions,
    this.backButton = false,
    this.blackTheme = false,
  });
  @override
  Size get preferredSize => Size.fromHeight(100.h);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: backButton
          ? IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: Colors.grey.shade300,
                padding: EdgeInsets.only(
                  left: 15.w,
                  top: 10.h,
                  bottom: 10.h,
                  right: 5.w,
                ),
              ),
              icon: Icon(Icons.arrow_back_ios),
            )
          : leading,
      title: title,
      actions: actions,
      leadingWidth: backButton ? 80.w : 100.w,
      toolbarHeight: 100.h,
      titleSpacing: 0,
      backgroundColor: Colors.white.withOpacity(0),
    );
  }
}
