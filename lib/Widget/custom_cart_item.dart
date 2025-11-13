import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCartItem extends StatelessWidget {
  const CustomCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10.w,
      children: [
        Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Item',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Row(
              spacing: 50.w,
              children: [
                Text(
                  '\$20.00',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        backgroundColor: Color.fromARGB(
                          255,
                          27,
                          43,
                          75,
                        ),
                      ),
                      icon: Icon(Icons.add),
                    ),
                    10.horizontalSpace,
                    Text(
                      '1',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    10.horizontalSpace,
                    IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        backgroundColor: Color.fromARGB(
                          255,
                          27,
                          43,
                          75,
                        ),
                      ),
                      icon: Icon(Icons.remove, size: 20.r),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
