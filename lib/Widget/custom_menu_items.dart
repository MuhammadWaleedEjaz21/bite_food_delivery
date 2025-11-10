import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMenuItems extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget? trailing;
  const CustomMenuItems({
    super.key,
    required this.title,
    required this.icon,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(5.r),
            child: Icon(icon, size: 30.r, color: Colors.deepOrange),
          ),
        ),
        title: Text(
          title,
          style: Theme.of(context).listTileTheme.titleTextStyle,
        ),
        trailing: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => trailing!),
            );
          },
          icon: Icon(Icons.arrow_forward_ios, size: 20.r),
        ),
      ),
    );
  }
}
