import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingTile extends StatelessWidget {
  final String title;
  final bool showMore;
  const HeadingTile({super.key, required this.title, this.showMore = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.sen(fontSize: 22.5.sp, fontWeight: FontWeight.bold),
      ),
      trailing: showMore
          ? TextButton.icon(
              onPressed: () {},
              label: Text(
                'See All',
                style: GoogleFonts.sen(fontSize: 17.5.sp, color: Colors.orange),
              ),
              icon: Icon(Icons.arrow_forward_ios, color: Colors.orange),
              iconAlignment: IconAlignment.end,
            )
          : null,
      contentPadding: EdgeInsets.zero,
    );
  }
}
